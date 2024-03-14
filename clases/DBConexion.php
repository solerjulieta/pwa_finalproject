<?php

class DBConexion
{
    public const DB_HOST = '127.0.0.1';
    public const DB_USER = 'root';
    public const DB_PASS = '';
    public const DB_NAME = 'database';

    /** @var PDO */
    protected PDO $db;

    public function __construct()
    {
        $dsn = 'mysql:host=' . self::DB_HOST . ';dbname=' . self::DB_NAME . ';charset=utf8mb4';
        $this->db = new PDO($dsn, self::DB_USER, self::DB_PASS);
        $this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }

    /**
     * Obtiene la conexión a la base de datos.
     * @return PDO
     */

    public function getConexion(): PDO 
    {
        return $this->db;
    }
}
