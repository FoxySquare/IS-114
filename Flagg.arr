use context essentials2021
Blue = rectangle(220, 160, "solid", "blue")

White-left = rectangle(70, 70, "solid", "white")
White-right = rectangle(130, 70, "solid", "white")


Red-left = rectangle(60, 60, "solid", "red")
Red-right = rectangle(120, 60, "solid", "red")

overlay-align("left", "top", Red-left,
  overlay-align("left", "top", White-left,
    overlay-align("left", "bottom", Red-left,
      overlay-align("left", "bottom", White-left,
        overlay-align("right", "top", Red-right,
          overlay-align("right", "top", White-right,
            overlay-align("right", "bottom", Red-right,
              overlay-align("right", "bottom", White-right,
                Blue))))))))