<?php
require_once "./app/config/connection.php";

class Vuelo extends Connection
{

    public static function ShowData()
    {
        try {
            $sql = "SELECT * FROM vuelos";
            $stmt = Connection::getConnection()->prepare($sql);
            $stmt->execute();
            $result = $stmt->fetchAll();
            return $result;
        } catch (PDOException $th) {
            echo $th->getMessage();
        }
    }

    public static function GetDataById($id)
    {
        try {
            $sql = "SELECT * FROM vuelos WHERE id = :id";
            $stmt = Connection::getConnection()->prepare($sql);
            $stmt->bindParam(':id', $id);
            $stmt->execute();
            $result = $stmt->fetch();
            return $result;
        } catch (PDOException $th) {
            echo $th->getMessage();
        }
    }

    public static function SaveData($data)
    {
        try {


            $sql = "INSERT INTO vuelos
                        (fecha_creacion,
                            persona_id,
                            estado,
                            usuario_id,
                            fecha_vuelo,
                            hora_salida,
                            hora_llegada,
                            duracion_trayecto,
                            tipo_trayecto,
                            costo_vuelo,
                            puerta_vuelo,
                            grupo_vuelo)
                    VALUES (:fecha_creacion,
                            :persona_id,
                            :estado,
                            :usuario_id,
                            :fecha_vuelo,
                            :hora_salida,
                            :hora_llegada,
                            :duracion_trayecto,
                            :tipo_trayecto,
                            :costo_vuelo,
                            :puerta_vuelo,
                            :grupo_vuelo
                        )";
            $stmt = Connection::getConnection()->prepare($sql);
            $stmt->bindParam(':fecha_creacion', date("Y-m-d H:i:s"));
            $stmt->bindParam(':persona_id', 1);
            $stmt->bindParam(':estado', 1);
            $stmt->bindParam(':usuario_id', 1);
            $stmt->bindParam(':fecha_vuelo', $data['fecha_vuelo']);
            $stmt->bindParam(':hora_salida', $data['hora_salida']);
            $stmt->bindParam(':hora_llegada', $data['hora_llegada']);
            $stmt->bindParam(':duracion_trayecto', $data['duracion_trayecto']);
            $stmt->bindParam(':tipo_trayecto', $data['tipo_trayecto']);
            $stmt->bindParam(':costo_vuelo', $data['costo_vuelo']);
            $stmt->bindParam(':puerta_vuelo', $data['puerta_vuelo']);
            $stmt->bindParam(':grupo_vuelo', $data['grupo_vuelo']);
            $stmt->execute();
            return true;
        } catch (PDOException $th) {
            echo $th->getMessage();
        }
    }

    public static function UpdateData($data)
    {
        try {
            $sql = "UPDATE vuelos
                    SET estado = :estado,
                        usuario_id = :usuario_id,
                        fecha_vuelo = :fecha_vuelo,
                        hora_salida = :hora_salida,
                        hora_llegada = :hora_llegada,
                        duracion_trayecto = :duracion_trayecto,
                        tipo_trayecto = :tipo_trayecto,
                        costo_vuelo = :costo_vuelo,
                        puerta_vuelo = :puerta_vuelo,
                        grupo_vuelo = :grupo_vuelo,
                        usuario_actualizadopor = :usuario_actualizadopor,
                        usuario_factualizacion = :usuario_factualizacion
                    WHERE vuelo_id = :id";
            $stmt = Connection::getConnection()->prepare($sql);
            $stmt->bindParam(':estado', 1);
            $stmt->bindParam(':usuario_id', 1);
            $stmt->bindParam(':fecha_vuelo', $data['fecha_vuelo']);
            $stmt->bindParam(':hora_salida', $data['hora_salida']);
            $stmt->bindParam(':hora_llegada', $data['hora_llegada']);
            $stmt->bindParam(':duracion_trayecto', $data['duracion_trayecto']);
            $stmt->bindParam(':tipo_trayecto', $data['tipo_trayecto']);
            $stmt->bindParam(':costo_vuelo', $data['costo_vuelo']);
            $stmt->bindParam(':puerta_vuelo', $data['puerta_vuelo']);
            $stmt->bindParam(':grupo_vuelo', $data['grupo_vuelo']);
            $stmt->bindParam(':usuario_actualizadopor', 1);
            $stmt->bindParam(':usuario_factualizacion', date("Y-m-d H:i:s"));
            $stmt->bindParam(':vuelo_id', $data['id']);
            $stmt->execute();
            return true;
        } catch (PDOException $th) {
            echo $th->getMessage();
        }
    }

    public static function DeleteData($id)
    {
        try {
            $sql = "DELETE FROM vuelos WHERE id = :id";
            $stmt = Connection::getConnection()->prepare($sql);
            $stmt->bindParam(':id', $id);
            $stmt->execute();
            return true;
        } catch (PDOException $th) {
            echo $th->getMessage();
        }

    }
}