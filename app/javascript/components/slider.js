import Slider from "bootstrap-slider";

const slider = () => {
  const sliderB = document.getElementById("range");

  if (sliderB) {
    const beginInput = document.getElementById("age_range_begin")
    const endInput = document.getElementById("age_range_end")
    const beginSpan = document.getElementById("age_display_begin")
    const endSpan = document.getElementById("age_display_end")

    const slider = new Slider("#range", {
      min: 18,
      max: 99,
      range: true,
      value: [20, 40],
      tooltip_position: "bottom"
    });

    slider.on("change", ({ newValue }) => {
      const [beginValue, endValue] = newValue;

      beginInput.value = beginValue;
      endInput.value   = endValue;

      beginSpan.innerHTML = beginValue
      endSpan.innerHTML = endValue;
    })
  }
}

export { slider };
