let progress = document.getElementById("progressbar");
let totalHeight = document.body.scrollHeight - window.innerHeight;
window.onscroll = function () {
    let progressHeight = (window.pageYOffset / totalHeight) * 100;
    progress.style.height = progressHeight + "%";
};
let thispage = 1;
let limit = 6;
let list = document.querySelectorAll(".showcase-items .item");

function loadItem() {
    let begin = (thispage - 1) * limit;
    let end = thispage * limit;
    list.forEach((item, index) => {

        if (index >= begin && index < end) {
            item.style.display = "block";

        } else {
            item.style.display = "none";
        }
    })
    listPage();
}

loadItem();