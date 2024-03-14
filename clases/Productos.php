<?php

class Productos
{
    protected $producto_id;
    protected $categoria_fk;
    protected $titulo;
    protected $autor;
    protected $imagen;
    protected $precio;
    protected $sinopsis;
    protected $recomendado;

    /**
     * Retorna todos los productos de la tienda
     * @return array|Productos[] lista de productos
     */

    public function todoContenido(): array{
        $db = (new DBConexion())->getConexion();
        $query = "SELECT * FROM productos";

        $stmt = $db->prepare($query);
        $stmt->execute();
        $stmt->setFetchMode(PDO::FETCH_CLASS, self::class);

        return $stmt->fetchAll();
    }

    /**
     * Obtiene el producto que corresponde al id indicado
     * 
     * @param int $id
     * @return Productos|null
     */

    public function traerPorId(int $id): ?Productos {

        $db = (new DBConexion())->getConexion();
        $query = "SELECT * FROM productos
                  WHERE producto_id = ?";
        
        $stmt = $db->prepare($query);
        $stmt->execute([$id]);
        $stmt->setFetchMode(PDO::FETCH_CLASS, self::class);

        $producto = $stmt->fetch();

        if(!$producto){
           return null; 
        }
        
        return $producto;
    }

    /**
     * Setters y Getters
     */

    public function getProductoId(): ?int
    {
        return $this->producto_id;
    }

    public function getCategoriaId(): ?int 
    {
        return $this->categoria_fk;
    }

    public function getTitulo(): ?string 
    {
        return $this->titulo;
    }

    public function getAutor(): ?string 
    {
        return $this->autor;
    }

    public function getImagen(): ?string 
    {
        return $this->imagen;
    }

    public function getPrecio(): ?int 
    {
        return $this->precio;
    }

    public function getSinopsis(): ?string 
    {
        return $this->sinopsis;
    }

    public function getRecomendado(): ?bool 
    {
        return $this->recomendado;
    }

}