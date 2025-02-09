var tbls = document.querySelectorAll("table.sortable");
for (var i = 0; i < tbls.length; i++)
    preProcessSortableTbl(tbls[i]);

var d;
var c;
var j;


function preProcessSortableTbl(tbl) {
    var hcells = tbl.rows[0].cells;
    for (var i = 0; i < hcells.length; i++)
        if (hcells[i].classList.contains("sortcol")) {
            hcells[i].innerHTML += '<span class="arrow"></span>';

            hcells[i].onclick = function() {
                for (j = 0; j < this.parentNode.cells.length; j++) {
                    this.parentNode.cells[j].classList.remove("asc");
                    this.parentNode.cells[j].classList.remove("desc");
                }
                for (j = 0; j < this.parentNode.cells.length; j++)
                    if (this.parentNode.cells[j] == this) break;

                if (c == j.toString()) {
                    d = (d == "desc" ? "asc" : "desc");

                } else {
                    c = j.toString();
                    d = "asc";
                }

                this.classList.add(d);
                sortTbl(this.parentNode.parentNode.parentNode);
            };
        }
}

function compareNumber(n1, n2) {
    if (n1.length > n2.length) return n1;
    if (n1.length < n2.length) return n2;
    return n1 > n2 ? n1 : n2;
}


function sortTbl(tbl) {
    for (var i = 1; i < tbl.rows.length; i++)
        for (var j = i+1; j < tbl.rows.length; j++)
            if ((d == "asc" && tbl.rows[i].cells[c].innerHTML.toLowerCase() >
                    tbl.rows[j].cells[c].innerHTML.toLowerCase()) ||
                (d == "desc" && tbl.rows[i].cells[c].innerHTML.toLowerCase() <
                    tbl.rows[j].cells[c].innerHTML.toLowerCase())) {
                for (var t = 1; t < tbl.rows[i].cells.length; t++) {
                    tmp = tbl.rows[i].cells[t].innerHTML;
                    tbl.rows[i].cells[t].innerHTML = tbl.rows[j].cells[t].innerHTML;
                    tbl.rows[j].cells[t].innerHTML = tmp;
                }
            }
}