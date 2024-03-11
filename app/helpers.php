<?php
    function formatNumber($numbers) {
        $format = ['', 'K', 'M', 'T', 'KT', 'MT', 'TT', 'KTT', 'MTT'];
        $i = 0;
        while ($numbers >= 1000) {
            $numbers = $numbers / 1000;
            $i++;
        }
        return round($numbers, 1) . $format[$i];
    }

?>
