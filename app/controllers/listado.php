<?php

require_once "../models/vuelos_model.php";
echo json_encode(Vuelo::ShowData());