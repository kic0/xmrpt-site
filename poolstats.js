var xmlhttp = new XMLHttpRequest();
xmlhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
        var myObj = JSON.parse(this.responseText);
     document.getElementById("poolxmr").innerHTML += myObj.pool_statistics.miners +  " | Hash Rate: " + myObj.pool_statistics.hashRate/1000 + "KH/s | " +  "Blocks Found: " + myObj.pool_statistics.totalBlocksFound + " | Last Block: " + myObj.pool_statistics.lastBlockFoundTime ;
    }
};
xmlhttp.open("GET", "https://pool.xmr.pt/api/pool/stats", true);
xmlhttp.send();