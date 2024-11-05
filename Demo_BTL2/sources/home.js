let progress = document.getElementById("progressbar");
let totalHeight = document.body.scrollHeight - window.innerHeight;
window.onscroll = function () {
  let progressHeight = (window.pageYOffset / totalHeight) * 100;
  progress.style.height = progressHeight + "%";
};
const listItem = [
  {
    title: "Hoa Hồng",
    describe:
      "Hồng hay hường là tên gọi chung cho các loài thực vật có hoa dạng cây bụi hoặc cây leo lâu năm thuộc chi Rosa, họ Rosaceae, với hơn 100 loài với màu hoa đa dạng, phân bố từ miền ôn đới đến nhiệt đới.",
    image: "../img/hoa-hong-slide.png",
    bgColor:"pink",
  },
  {
    title: "Hoa Huong Duong",
    describe:
      "Hồng hay hường là tên gọi chung cho các loài thực vật có hoa dạng cây bụi hoặc cây leo lâu năm thuộc chi Rosa, họ Rosaceae, với hơn 100 loài với màu hoa đa dạng, phân bố từ miền ôn đới đến nhiệt đới.",
    image: "../img/hoa-hong-slide.png",
    bgColor:"skyblue",
  },
  {
    title: "Hoa Hồng",
    describe:
      "Hồng hay hường là tên gọi chung cho các loài thực vật có hoa dạng cây bụi hoặc cây leo lâu năm thuộc chi Rosa, họ Rosaceae, với hơn 100 loài với màu hoa đa dạng, phân bố từ miền ôn đới đến nhiệt đới.",
    image: "../img/hoa-hong-slide.png",
    bgColor:"violet",
  },
  {
    title: "Hoa Hồng",
    describe:
      "Hồng hay hường là tên gọi chung cho các loài thực vật có hoa dạng cây bụi hoặc cây leo lâu năm thuộc chi Rosa, họ Rosaceae, với hơn 100 loài với màu hoa đa dạng, phân bố từ miền ôn đới đến nhiệt đới.",
    image: "../img/hoa-hong-slide.png",
    bgColor:"green",
  },
  {
    title: "Hoa Hồng",
    describe:
      "Hồng hay hường là tên gọi chung cho các loài thực vật có hoa dạng cây bụi hoặc cây leo lâu năm thuộc chi Rosa, họ Rosaceae, với hơn 100 loài với màu hoa đa dạng, phân bố từ miền ôn đới đến nhiệt đới.",
    image: "../img/hoa-hong-slide.png",
    bgColor:"skyblue",
  },
];

const backgroundWrapper = document.querySelector(".carousel-bg-wrapper");
for (let i = 0; i < listItem.length; i++) {
  backgroundWrapper.innerHTML += `<img src="${listItem[i].image}" alt="" class="carousel-bg">`;
}

const contentWrapper = document.querySelector(".content-wrapper");
for (let i = 0; i < listItem.length; i++) {
  contentWrapper.innerHTML += `
    <div class="content">
        <h1 class="name oswald-bold" style="--i: 0">${listItem[i].title}</h1>
        <div class="describe oswald-medium" style="--i: 1">
            <p>${listItem[i].describe}</p>
        </div>
        <button class="roboto-medium" style="--i: 3">ORDER</button>
    </div>
    `;
}
const slide = document.querySelector(".slide-wrapper .slide");
for (let i = 0; i < listItem.length; i++) {
  slide.innerHTML += `
                <div class="item-wrapper">
                    <div class="item" style="--bg: ${listItem[i].bgColor}">
                        <img src="${listItem[i].image}" alt="" />
                    </div>
                </div>
                `;
}
const backgrounds = document.querySelectorAll(".carousel-bg");
const indicatorNumbers = document.querySelectorAll(
  ".carousel-indicators .number"
);
const contents = document.querySelectorAll(".content");
const items = document.querySelectorAll(".slide .item-wrapper");
const prev = document.querySelector(".prev");
const next = document.querySelector(".next");

let currentIndex = 0;
const setActive = (index) => {
  currentIndex = index;
  if (currentIndex == 0) {
    prev.disabled = true;
  } else prev.disabled = false;
  if (currentIndex == listItem.length - 1) {
    next.disabled = true;
  } else next.disabled = false;
  backgrounds.forEach((background) => {
    background.classList.remove("active");
  });
  backgrounds[currentIndex].classList.add("active");

  indicatorNumbers.forEach((number) => {
    number.classList.remove("active");
  });
  indicatorNumbers[currentIndex].classList.add("active");

  contents.forEach((content) => {
    content.classList.remove("active");
  });
  contents[currentIndex].classList.add("active");

  items.forEach((item) => {
    item.classList.remove("active");
  });
  items[currentIndex].classList.add("active");
};

setActive(currentIndex);

prev.addEventListener("click", () => {
  currentIndex--;
  slide.style = `--i: ${currentIndex}`;
  setActive(currentIndex);
});
next.addEventListener("click", () => {
  currentIndex++;
  slide.style = `--i: ${currentIndex}`;
  setActive(currentIndex);
});
