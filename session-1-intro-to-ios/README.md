# Hack Sprint Session 1 README

**Slides**: https://docs.google.com/presentation/d/1jdLz1cU41l7fj3WQTB8BHoS2whf8-1vAX3s8D_2MoaQ/edit?usp=sharing

**Image**: https://imgur.com/a/u1fm6

## Table of Contents

- <a href="#gs">Getting Started</a>
- <a href="#ib">Interface Builder</a>
  - <a href="#ui">Setting up the UI (User Interface)</a>
  - <a href="#al">Setting Constraints Using Auto Layout</a>
  - <a href="#xcassets">Adding Images Using XCAssets</a>
  - <a href="#objects">Linking your IB Objects to your Code</a>
  - <a href="#link">Linking IB Actions (Button Taps) to your Code</a>
- Coding in Swift
  - <a href="#properties">Declaring the Properties we Need</a>
  - <a href="#score">Incrementing Score when we Tap the Button</a>
  - <a href="#timer">Implementing a Timer</a>
  - <a href="#tap">Disabling and Enabling the Tap Button</a>
- Add Another View Controller
  - Interface Builder
  - Add a Segue
  - Add an Unwind Segue

## <a id="gs">Getting Started</a>

1. Begin by creating a new project in Xcode.
2. Select "Create a new Xcode project" near the bottom left of the window.

![open img](https://lh5.googleusercontent.com/Uv_0UW2wVlVMjLCC0YniMQTgR-SZEVgo27yXnlcWThcU2tvB9wDIeW4swW8Ky9C0LvOwxks0nwM3cjUWRoa_YxKu-Q1EsuSmeIRfAQqAhrJ5lln5IY9lE-8wdxwkNJAKNfHW5Y-v)

------

3. Ensure that the "iOS" tab at the top of the page is selected.
4. Double-click on "Single View App".

![img](https://lh5.googleusercontent.com/8K6MDiviiQGT4Zh34welL_CBntAvjlPDZAcGhEXWoswlfNNYY_Mxx1SPEqdgLpZF6wGVWqlUKfimvS_jXOlvPhSAmeHiZ4k76at4I3uYb_KM-TUFqRUNOE2hJvqPmcZXISCsqWaM)

------

5. Name your project "BruinTap".
6. Pick whatever Team, Organization Name and Organization Identifier that you want.
7. Ensure that the Language field is set to "Swift".
8. Ensure that "Use Core Data" is unchecked.
9. Click "Next".
10. On the following window, select where you'd like your project's folder to be create (default location is ~/Desktop) and click "Create".

![img](https://lh5.googleusercontent.com/OyfA9to-U3P4DvAhdLZbEjmX_9_jS52MbWeeGG8l1KzAB4lkhCprOcrTpB3lMjZZ1iABwH-YrANFzAlQfosfbAt0iuZ8W1-SLKRLnJgr-DVAdj7RHIXwKdgDHIPHEAwTAT2Nkowu)

------

## <a id="ib">Interface Builder (IB)</a>

1. In the **Project Navigator** on the left, you should see all of the files associated with our project. The only group (folder) we're interested in for the purposes of this tutorial is the **BruinTap** group. The BruinTapTests, BruinTapUITests, and Products groups aren't important for now.
2. Inside the **BruinTap** group you should see a file named **Main.storyboard**. Click it and you'll be taken to the Interface Builder.

<img src="https://lh6.googleusercontent.com/AOnK4DD8EzsrQH_jiQrqG5v_QH-PA4sWCBWyjPDUk5UAy59Bz42BEduCOGKUPEfpHyfsdLsnx2N9pAZ5vSi4TtUYvMSTswngmvVzll_QukVcbN1Wc3LOiCEdC8QptO_oZfz9bDPz" width="300px">

------

### <a id="ui">Setting Up the UI (User Interface)</a>

1. Locate the button that has a circle with a square in it on the top right of the screen and click it.
2. The Object Menu will appear and contain UI elements we can drag into our storyboard.

<img src="https://lh6.googleusercontent.com/PoMPH6rohs-ubyQMHMNNcOahznuqqRhOVslYRaVgd1NT6upVPo0S_JfP_kkQOgy8wX0JDFdJ15SG3Q0PdoN6rdx6PnuBMdFnn5QzvqSNda181oeoyUmM1AlEjw6aCDfMXQPF-ol0" width="300px">

------

3. Scroll down in the menu until you see the "Label" and "Button" elements.

<img src="https://lh5.googleusercontent.com/CKHesA5Fm5BNgh3p1qcv33wCSaJ4Kp5_erTBcdMTWLj-Fd4k9B6zmr1ABkhf8cKOHwc_k-HzF9njY6Nm3t3k2Sq_LldPgBiOtghmxPwQBIrWUXn0MW2Kf_iyegT6iwDyfqDEMd-x" width="300px">

------

4. Drag two Labels and two Buttons into the View Controller, and arrange them as they are in the following photo (it doesn't have to be exact, just more or less):

<img src="https://lh4.googleusercontent.com/j1jPV2PkuV0kShvF0TYy4OLawUMDBC33kgyB5weIaRzhG7dTS6Syd6b2094qBGeoxQ1x_Z2IsuYAMZOKqw53YXQbw2p0O-5s2Xaz5K7-IzckoJ-DKWYQPwNbBrMmZCtJ63jC4dVJ" width="700px">

------

### <a id="al">Setting Constraints Using Auto Layout</a>

1. Select the Button we placed in the top left corner.
2. On the right side of the screen, open the **Attributes Inspector** by clicking the tab to the left of the ruler icon:

<img src="https://lh5.googleusercontent.com/xBPAQeuhDpw4dzcsLNlSvHfUYDzsfJrCILI7B-UyPy9uqTfnCLuADHQHio-HDWY1QbnwL7VtrO0HI1geQwb4digekuhGIVYWojJGmVEqzGamRb-ZDhWDTSFAoxdTTTvjLOOOHksu" width="300px">

------

1. Under the "Title" field (third from the top), change the text from "Button" to "Start" and press Enter.

<img src="https://lh3.googleusercontent.com/X2GqJOBz-ewJPXvIgJbJyqr3vMfS2b3YJWmKtZke_uWRzjKuAL71bmiFfHqkFcVUkaBzbZugIhwN57wP7tuOpYfrFd4AHbZbm0J0mpcTATfHI7jxF4tzA2bgZ6duWiGXAcMd-JUs" width="300px">

------

3. With the Start button still selected, click the "Add New Constraints" button near the bottom right of the page.

<img src="https://lh6.googleusercontent.com/wNnYXWVwMV_yWeb3GeJhAQgO8-x7lk5j5wbEoWBw7qswVLYwBDo3WTKnOI2qlZVnqMJdH_1hwXZ9UEXmy_7fdkqj6bG3I-uK5EE4kRvl28qyIwuo8kIz346PpvxPjh0Al_ah9PXw" width="300px">

------

4. Set both the top and left margins to **30**. The red lines should now be solid rather than dashed.
5. Click "Add 2 Constraints".

<img src="https://lh5.googleusercontent.com/sOwN_Zy8n97acSNyYedL3Gf7zSWtQDQY8bv22BuoodMg-oi6-i2GE5W8dLzG1TpfF80mPgLFM2J0ujAeR4_wOttyFOJHOdSgRMvJ797ej0qaz_iKVCZKMiql28eyGB0gounNTwhV" width="300px">

------

6. Now select the Button in the middle of the page.
7. Click the "Add New Constaints" button near the bottom right of the page.
8. Set the Width and Height to **150**. The boxes next to Width and Height should now be checked.
9. Click "Add 2 Constraints".

<img src="https://lh4.googleusercontent.com/lVng2-YBjN5WNyjdR0uhiEx4oBlfJ7TCVYj5eEekJbEx3uf2Tbr_ip8wOSeZfI4rrj5h_yelgq9jXZs9hEIxNaOGjpR92R6v4MGXb7MaLrqNYhG5BIlSZCwZD2ydvCYGmBmfGH6g" width="300px">

------

10. With the Button in the middle of the View Controller still selected, click the "Align" button directly to the left of the "Add New Constraints" button near the bottom right of the page.
11. Check both the "Horizontally in Container" and "Vertically in Container" boxes.
12. Click "Add 2 Constraints".

<img src="https://lh6.googleusercontent.com/HRjRtbcXwh3xuWmTeuHTVmZA1mWY5hNWDSyIHsRNjjdXly7y1HycUUty9x7xrPfoxJ04pdoweXsBmsIl3LJReSxpsqEBhFyLo-KDr1dRQS6BY0Q2iNS2_dAMH0M0kD7o6BG0SnjO" width="400px">

------

13. Select the Label above the Button in the middle of the page.
14. In the Attributes Inspector on the right side of the screen (the tab to the left of the ruler icon), change the Text field to **0** (then press Enter) and change the Alignment to **centered**.

<img src="https://lh3.googleusercontent.com/-2Jz-8mf22WlFLq92TPbzT1FAmApNSVTFxUizNBQXkyN5pK2EFfWxDD3P_VFZueWIBE2c-FzDfUrpyCbyxFEdYjbmlr8ze_dCb91hIx_gwb9ce04v_k1kuRgT8MolnVg4oA0gvTT" width="300px">

------

15. With the top label still selected, click the "Add New Constaints" button near the bottom right of the page.
16. Set the bottom margin to **75**. The red line should now be solid rather than dashed.
17. Click "Add 1 Constraint".

<img src="https://lh5.googleusercontent.com/C1HE1BtZhIXpyCGgyEoB3-nUJH4uPFY0jvuGE2eEIwtJRcE0-uSS0_nMYmSX-l50fjeAZo5n3xX5ocYC_ye5LnckqG7yH5cBY-oPzIyYPIiGiIGDVMEPjoh-l-0mkodaQ1BMXeiT" width="400px">

------

18. With the top label still selected, click the "Align" button directly to the left of the "Add New Constraints" button near the bottom right of the page.
19. Only check the "Horizontally in Container" box.
20. Click "Add 1 Constraint".

<img src="https://lh3.googleusercontent.com/wud0tOOj9Q15ssAWxHcZNbvVHY3OWIeYwio43mmkeZIeqOXwqASm2ktq1s3f91sJ9pCIdvCZUgidHyuUhmIwWXCa0B-CLOrk8iTg3eQDLPn4Eh4fhIOi5iCuT1N6N2_EHM6bYiOE" width="300px">

------

21. Now select the Label below the Button in the middle of the page.
22. In the Attributes Inspector on the right side of the screen (the tab to the left of the ruler icon), change the Text field to **10.00** (then press Enter) and change the Alignment to **centered**.

<img src="https://lh5.googleusercontent.com/6DVRk_gO-Dh3uzDHhi384MRV3EXSy02liIU2TC_Q94mvj-ZuyJCXz_9APHLfWqBk4gXiHIiDAiEv6sCtlNW3eV7_2AmRdbnmQM1Ta6zwwXJUNfKI8JrAjA50QpfSUYmBJ702SST3" width="300px">

------

23. With the bottom label still selected, click the "Add New Constaints" button near the bottom right of the page.
24. Set the top margin to **75**. The red line should now be solid rather than dashed.
25. Click "Add 1 Constraint".

<img src="https://lh6.googleusercontent.com/-BqT1IscS0av-rdZwovK5vrCkJO9uP-dk2hlErv_yIEFJqmmmomdldqJPI7hdaLtYeoYSot3kt6S-BU6Z2T7xhomYgUQjZlXVu493JrQe3LfmAwCAXlVz75fv3rW7btUI0YPjTrD" width="400px">

------

26. With the bottom label still selected, click the "Align" button directly to the left of the "Add New Constraints" button near the bottom right of the page.
27. Only check the "Horizontally in Container" box.
28. Click "Add 1 Constraint".

<img src="https://lh3.googleusercontent.com/wud0tOOj9Q15ssAWxHcZNbvVHY3OWIeYwio43mmkeZIeqOXwqASm2ktq1s3f91sJ9pCIdvCZUgidHyuUhmIwWXCa0B-CLOrk8iTg3eQDLPn4Eh4fhIOi5iCuT1N6N2_EHM6bYiOE" width="300px">

------

29. All set, verify that your View Controller now looks like this:

<img src="https://lh3.googleusercontent.com/cFx3aRTUd_RR6-cFxivIJExz8As81CiSll8DcrewKc_zblbXwD1c0iJwRuL-TSkrCfgY-B5DR2Epnv-LcFHuuZCmc_7xuQTOhloWEY9zikWr5a7bonGNIX1482iK-wvpbaDdr4Vm" width="400px">

------

### <a id="xcassets">Adding Images Using XCAssets</a>

1. In the **Project Navigator** on the left, select the folder icon named **Assets.xcassets**.
2. In the left pane (the one containing the "AppIcon" entry), right click and select "New Image Set".

<img src="https://lh6.googleusercontent.com/Q_4yL6lxZfpBEQ4xr8Bm5TisttCFoFa3ViMsUX6SeSPD3zYOGM6wJxTbgTka2A9htAkzOpijw56YsrWmGJ3vmvC27D74Mg8uPnNwKtj0Sj1DM1zScYKsKv3XwqpYZiNxycowrJoQ" width="400px">

------

3. Single click our newly created **Image** and rename it to **ButtonBG**.

<img src="https://lh4.googleusercontent.com/auSrOEDM354oDWSjkuKVqZ2rIIlw8l0JtgB4nCNipY_ggogRuoTrZdpIs0dYEMmnNF-AmFsTmOS_GJd6ek409g0y920M1wlq2FmUglY3GvQP2L593XnT5qPYrPA6stRJOsoZvm7S" width="200px">

------

4. Click [here](https://imgur.com/a/u1fm6) and download the image.
5. From Finder/your Downloads, drag the downloaded image into the slot in **ButtonBG** labeled **1x**.

<img src="https://lh3.googleusercontent.com/PiADcb4AEIMSb93Df__VGxzGAQTdnYNdy1Hefdt4w9KeiOVC8jHUUzuGlCmo29-uFpZvV-ORTX4ePuxiMEc3L5azqZNJnmjwEzBmr-wMl2uuATTZMqJJDcBf6RVQtHvztjppD91t" width="400px">

------

6. Return via the Project Navigator to **Main.storyboard**.
7. Select the Button in the center of the View Controller and set its Title field to nothing/empty via the Attributes Inspector.

<img src="https://lh5.googleusercontent.com/vAc4yi1PsGTfOlr2oQ7WnEQtKYqYFt68vqHgRgA5wOgMn6vWiDA0M8CYNsLtfQLY61lOOHb_6fN52yWTbwMfnip2ov48IadB_HAmh_GiUPl1zhIcALq9Sqv3aIMw-FJz6Gw2hckT" width="400px">

------

8. Five fields down from the "Title", use the drop-down menu to change the "Background" to **ButtonBG**.

<img src="https://lh6.googleusercontent.com/ty7X46IFeOZu2KHVWUViZxRF6iaszmui14FxJZ6oDiJ_6Pl3DorIcKDXwVumtYbAWnXNbH8uKyeGdLsHJpvJxN8M9DjQmZkuLErMsjFJe6RrYXomxurrJsRqO36wDjq6iAqkXwnG" width="400px">

------

### <a id="objects">Linking your IB Objects to your Code</a>

1. Click on the two overlapping circles near the top right of Xcode to open the **Assistant Editor**.
2. If it is difficult to see our View Controller, close the left pane if necessary by clicking on the button (square with black rectangle on the left side) to the left of "View as iPhone..." in the bottom left of the window.

<img src="https://lh5.googleusercontent.com/Lfiy2RJukG2_N829-Fns5f73vmF1nzoIpPJzRjbhvStt4bZNTEqXJbQYuRAeQzCb9HzNxX_MGLxJJlwQV4deO0vMTBnunazNL7H_G2mUzysg1eKuIBxekClLsErAn06_XHQtR-Gw" width="700px">

------

3. **While holding down control** (not to be confused with cmd(⌘)), click on the "Start" button and drag to the space directly **above** the `viewDidLoad()` function.
4. In the window that appears, **ensure that the "Type" field says UIButton, else press "Cancel" and try again.**
5. Set the "Name" field to **startButton**.
6. Click "Connect".

<img src="https://lh5.googleusercontent.com/vD4_j0exK5QxQBu2p55CskspUevNA2knVao_7h8dzb1j2NmZnFfznnezU2hfaFay9vUW8_3A2swJ9HJ-h9xTfFWlv-oxkLVQXfr-EVSeEWTDmU2SXTgyp1kcyUJOGrAkV0EprHsD" width="500px">

------

7. While holding down control, click on the button in the middle of the View Controller and drag to the space directly **below** the startButton line we just made.
8. In the window that appears, **ensure that the "Type" field says UIButton, else press "Cancel" and try again.**
9. Set the "Name" field to **tapButton**.
10. Click "Connect".
11. While holding down control, click on the "0" label and drag to the space directly **below** the tapButton line we just made. (Note: You may have to zoom in via pinch-drag on your touchpad to be able to select the label itself).
12. In the window that appears, **ensure that the "Type" field says UILabel, else press "Cancel" and try again.**
13. Set the "Name" field to **scoreLabel**.
14. Click "Connect".
15. While holding down control, click on the "10.00" label and drag to the space directly **below** the scoreLabel line we just made. (Note: You may have to zoom in via pinch-drag on your touchpad to be able to select the label itself).
16. In the window that appears, **ensure that the "Type" field says UILabel, else press "Cancel" and try again.**
17. Set the "Name" field to **timeLabel**.
18. Click "Connect".
19. Add a new line under the "timeLabel" declaration we just made if necessary (for neatness).
20. You should see the following:

<img src="https://lh3.googleusercontent.com/icMnDx9x57W_RTbGbAabggnyzhrfGcZCkMPWxDGAQkdWHZBlM914RcVoIPVS8s47WRTgRAXB1r_WqRpmwZucjSDGH3-bIRUA_is90AzyB-c_UOiOm4yPCrkjffS5RhhafXpRJpO9" width="400px">

------

### <a id="link">Linking IB Actions (Button Taps) to your Code</a>

1. While holding down control, click on the "Start" button and drag to the space directly **above** the `viewDidLoad()` function.
2. In the window that appears, **ensure that the "Type" field says UIButton, else press "Cancel" and try again.**
3. Use the drop-down menu to change the "Connection" field from Outlet to **Action**.
4. Set the "Name" field to **tappedStartButton**.
5. Use the drop-down menu to change the "Type" field from Any to **UIButton**.
6. Ensure that the "Event" field is set to **Touch Up Inside** and that the "Arguments" field is set to **sender**.
7. Click "Connect".

<img src="https://lh4.googleusercontent.com/0vN2nUe16ilVCXnT-l6HD1UCW4bqK8qtfL6III8fsVDaZ2iV5dVugnaKLExfqWQNyrFF3brAxiOVRMxNB2No6lRtA1xyTTV945aigkGAc9R1uBb9A4Y_-kP4uditGcZDvPWVbAOC" width="400px">

------

8. While holding down control, click on the Button in the middle of the View Controller and drag to the space below the function we just made, but still **above** the `viewDidLoad()` function.
9. In the window that appears, **ensure that the "Type" field says UIButton, else press "Cancel" and try again.**
10. Use the drop-down menu to change the "Connection" field from Outlet to **Action**.
11. Set the "Name" field to **tappedTapButton**.
12. Use the drop-down menu to change the "Type" field from Any to **UIButton**.
13. Ensure that the "Event" field is set to **Touch Up Inside** and that the "Arguments" field is set to **sender**.
14. Click "Connect".
15. Add newlines as necessary for neatness.
16. You should see the following:

<img src="https://lh5.googleusercontent.com/rkhhAsfJ5yPt1k8iIKeBcQE2VVnvTgLYv9dnIydnqCdCuU8DERkpQMEzuj6Iu6cUHBz0Do052B7BMrmB4c3NeVLhG3DURy-5HYUajqhJk4OLC8Q-DWkuf9gU0vPjT9LdY-VPNzVg" width="400px">

------

## Coding in Swift

### <a id="properties">Declaring the Properties we Need</a>

1. Close the Assistant Editor by clicking on the "X" on the top right of the pane with our code in it.

<img src="https://lh4.googleusercontent.com/A-RVsXCWjLw7CCSyVnILjcA6unhMfWogMvawakNxymxEXA4XAsPmde8Efr-ql0YH5ypolsSQnb5uTRwzmfKu5a6CUjLadufzZVf8lOHZjQW_dnrlEThuQOdSILP7Ng-Fk0aeGQ19" width="300px">

------

2. In the Project Navigator on the left side of the screen, select the "ViewController.swift" file.

<img src="https://lh4.googleusercontent.com/zeqrQVy_EnYz0F0Ct6I_slML_o116a7IUdfR8gbXISfMt_IP4vqHIK9f8cgcXqn8VJ-0PR9TvWdqVrEf3aqM_7q9KzVi7M1CXTmcXbhWm_ljaoPdbgyixPi0h1CXo4QfGY9tZA1o" width="500px">

------

3. Above all of the IBOutlet statements, but still within the (`class ViewController` block), add the following code:

```
var score = 0
    
var timer: Timer!
var time: Double = 10
```

<img src="https://lh5.googleusercontent.com/VJ_IYJ84gpkCmnJl9x2PYU-s83XdMwPdLq12ZWvNfpJ4yIMbTA3nwc0sg5z5UKLlXyPXdR52Jad07J_brAJiTcmeNO8Iy9_l6-ciqhY3iQS2xudVqLHwZGGcOrFUMqmmkmmlYf5e" width="400px">

------

### <a id="score">Incrementing Score when we Tap the Button</a>

1. Inside the `tappedTapButton()` function, add the following code:

   ```swift
   score += 1
   scoreLabel.text = String(score)
   ```

<img src="https://lh4.googleusercontent.com/5Zon-X93GSc2tsk-D5zWxONNexXAjmlWfCNgILBbB3CeKD2COaoA6kB2g1gUJM6sIcQy0WmTgH4eM8klMhg3h7MQ7rn94mKkKTNmZNnFdoxZPkXqMPNt9sJOWpNsbKY9GNpAFVE8" width="400px">

---

2. Use the "Play" button in the top left of Xcode to build and test our app out. Selecting a smaller phone like the iPhone 5S or 6 will make it easier to see everything.
3. Try pressing the button. The score should go up each time we tap it!

<img src="https://lh5.googleusercontent.com/OTRklG8jmAHrFR1Rc0cAFAW4lYVXAEMJ1pl9MGoW7D7spEcoOKihvlhf_g0giGL5mlSO2pjvVUhjFw8SPHJVF8fBdnpPm2-UlXJAx16Ebt9zOxpl87nyvAkWLHIc01vX5kevdfgZ" width="300px">

------

### <a id="timer">Implementing a Timer</a>

1. Inside ViewController.swift, declare a function exposed to Objective-C between `tappedTapButton()` and `viewDidLoad()` named **timerAction()** and fill it with the following code:

   ```swift
   @objc func timerAction() {
           
           time -= 0.01
           timerLabel.text = String(format: "%.2f", time)
           
           if time <= 0 {
               
               timer.invalidate()
               timerLabel.text = "0.00"
               
               startButton.isEnabled = true
               
           }
           
   }
   ```

2. Inside the `tappedStartButton()` function, add the following code:

   ```swift
   time = 10
   timeLabel.text = String(format: "%.2f", time)
           
   timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
           
   startButton.isEnabled = false
   ```

<img src="https://lh5.googleusercontent.com/CoKATlYsQtezIzLAy_twti7fSEU6tNtOlDakie2wxtK1kq0d9XF3oGPyJW6O4u7OOeAgfgIkeJviEMuYmf9gB5KQ2LdChotMQ98Klcb2_aNg2Gb0ztwzfVJgsxjn7lQJeTgmEjJO" width="400px">

------

3. Build and run our app again. Tap the "Start" button and you should see the timer counting down!

### <a id="tap">Disabling and Enabling the Tap Button</a>

1. Inside the `viewDidLoad()` function, add the following code:

   ```swift
   tapButton.isEnabled = false
   ```

2. Change the `timerAction()` function to the following:

   ```swift
   func timerAction() {
           
           time -= 0.01
           timerLabel.text = String(format: "%.2f", time)
           
           if time <= 0 {
               
               timer.invalidate()
               timerLabel.text = "0.00"
               
               startButton.isEnabled = true
               tapButton.isEnabled = false
               
           }
           
   }
   ```

3. Change the `startTap()` function to the following:

   ```swift
   @IBAction func startTap(_ sender: UIButton) {
           
           score = 0
           time = 10
           
           scoreLabel.text = String(score)
           timerLabel.text = String(format: "%.2f", time)
           
           timer = Timer.scheduledTimer(timeInterval: 0.01, 
                                        target: self, 
                                        selector: #selector(timerAction), 
                                        userInfo: nil, 
                                        repeats: true)
           
           startButton.isEnabled = false
           tapButton.isEnabled = true
           
   }
   ```

4. Build and run the app again.

## Add Another View Controller

### Interface Builder

1. In the **Project Navigator** on the left, select the Main.storyboard file.
2. Locate the button that has a circle with a square in it on the top right of the screen and click it to reveal the Object Menu.

<img src="https://lh3.googleusercontent.com/c4g4gd44sRChLdRL_3ArL4_AQuJjfugHd0qImIO1_qRxSF5PIx33ukBgPooj39Ppxl_EJX7P3iwnvvvLx0ne8i2ierXyna4rSMxl9sGE-KA2rwXU5uPpGZN9-5v0bHvVJ2uV_WoJ" width=500px>

---

3. Locate the "View Controller" object and click and drag one to the right of the View Controller we've already made.

4. Scroll and locate the "Label" and "Button" objects, then drag a label and a button into the **new** view controller we created and one button into the **old** view controller like so:

<img src="https://lh5.googleusercontent.com/yC95BmDtzN56IAE9cJxzVwqsjOHsqu1tm35zwpz_68zfugNz7mp68fbz-0JWpcSVQhdUg9Y87paymVawaP3wP9AGLQOP5VE0wN9wd5v53wYTh8D311qWnGyN-5yLTMBlLE6Wz9zH" width=400px>

---

5. Select the button we placed in the top right corner of the old view controller.
6. Use the Attributes Inspector to change its text to "Spill the Tea".
7. With the button still selected, click the "Add New Constraints" button near the bottom right of the page.
8. Set the top and right margins to **30**. The red lines should now be solid rather than dashed.
9. Click "Add 2 Constraints".

<img src="https://lh4.googleusercontent.com/S5eZnNe162K1P5DBUv1qyAgB299TtLEUl0IyqDkrT0ZZ3Ic7QyTZxCnNN6lxZk_DQ7htdkxI0-v2FLyEQtJlQQYfq5VlsXhyOFc24-7w8IY0nN1WV8zRYKCs7vjiuUNWnoEOcpKc" width=500px>

---

10. Select the button we placed in the top left corner of the new view controller.
11. Use the Attributes Inspector to change its text to "Close".
12. With the button still selected, click the "Add New Constraints" button near the bottom right of the page.
13. Set the top and left margins to **30**. The red lines should now be solid rather than dashed.
14. Click "Add 2 Constraints".

<img src="https://lh4.googleusercontent.com/743rFVbFcXd6FOolgaxY-HB7ZIPf4nhUU7ym7PY4yVaNEwmkTMvB25aGc2p94nCjEfktSFi1nZ_5RcuqCY9gTJ3W20K4njUiuyjA5fNuh4-naN2O2DLcADVjHhSDEpjtAjioew6P" width=400px>

---

15. Select the label we placed in the middle of the new view controller.
16. Use the Attributes Inspector to change its text to "Emacs > Vim". **This step is very important!**
17. With the button still selected, click the "Align" button near the bottom right of the page.
18. Center the label horizontally and vertically
19. Click "Add 2 Constraints".

<img src="https://lh4.googleusercontent.com/Tr-upf8kuEnWZWkZu7LWqqDrIf9ZA8tmHIJlm54cvtp2IvmRTf71TTlYW99MetCaRKXn-0NO5QKwQD8K5jOp0lUT5KiaXToYcLMDS9x2r5i8c1Y6lYFMEUFKLTYTiIORMeVQEj_V" width=400px>

---

### Add a Segue

1. Select the "Spill the Tea" button we placed in the old view controller.
2. **While holding down control** (not to be confused with cmd(⌘)), click on the "Spill the Tea" button and drag to the new view controller.
3. In the window that appears, select "Present modally".

<img src="https://lh4.googleusercontent.com/_i8Vjw5vlVFL7RlsGInMfjBRWPqkQ9svHwGvxni58KSDcPHVIe7HaX0FducFcqWT-BaUPmwqqYA5qg24Rnfpks14_yGLXxWNBEN0z8P-Yhu6kUI7dysVhg1_A1v6OA3BhzdGemCN" width=400px>

---

### Add an Unwind Segue

1. In the **Project Navigator** on the left, select the ViewController.swift file.
2. Copy the following code into the class (make sure you copy it **outside** of all of the other functions we've written).

```swift
@IBAction func unwind(segue: UIStoryboardSegue) { }
```

---

3. Use the Project Navigator to go back to the Interface Builder by selecting the Main.storyboard file.
4. **While holding down control** (not to be confused with cmd(⌘)), click on the "Close" button and drag to the "Exit door" icon on the top of the new view controller.

<img src="https://lh3.googleusercontent.com/m1ZSzOHA1tlQQBAtjUFM4Wb7LYdomEes4zi21ynaAIWSlKdhtkjOxW_t_LEUG1aZOgdTarVsPQhe3HHmY_WaBwR9H_ll4VIq_Aw8vjrMH4manx8JMrNH6HN_7dWIKdvp6sfH0NLC" width=500px>

---

5. Build your app and run. Congratulations, you've finished your first app!

