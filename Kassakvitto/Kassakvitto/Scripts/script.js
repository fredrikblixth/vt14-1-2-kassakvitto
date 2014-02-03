var Receipt = function () {
    var self = this;
    self.init = function () {
        var totalSumTextbox = document.querySelector("#TotalSumTextbox");
        totalSumTextbox.focus();
        console.log("hihihih");
    };
}
var receipt = new Receipt();
window.onload = receipt.init;