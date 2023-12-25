# Learning line

How the topics relate


```mermaid
flowchart TD

    %% Give a white background, instead of a transparent one
    classDef node fill:#fff,color:#000,stroke:#000
    classDef skill_node fill:#fff,color:#000,stroke:#000,stroke-width:4px

    a_new_learner[A new learner]

    subgraph sub_electronics[Electronics]
      can_connect_a_led_to_5v[Can connect a LED to 5V]
      can_connect_a_led_and_button_to_5v[Can connect a LED and pushbutton to 5V]
      can_connect_a_led_and_ldr_to_5v[Can connect a LED and LDR to 5V]
      can_connect_a_led_and_potmeter_to_5v[Can connect a LED and potmeter to 5V]
      can_connect_a_led_and_joystick_to_5v[Can connect a LED and joystick to 5V]
      can_connect_a_led_and_button_and_ldr_to_5v[Can connect a LED and button and LDR to 5V]
      can_connect_a_led_and_button_and_potmeter_to_5v[Can connect a LED and button and potmeter to 5V]
      can_connect_a_led_and_button_and_joystick_to_5v[Can connect a LED and button and joystick to 5V]
      can_connect_a_many_leds_to_5v[Can connect many LEDs to 5V]
      can_connect_an_rgb_led_to_5v[Can connect an RGB LED to 5V]
    end
    style sub_electronics fill:#cfc,color:#000,stroke:#cfc

    subgraph sub_arduino[Arduino]
      can_connect_a_led_to_arduino[Can connect a LED to Arduino]
      can_connect_a_led_and_button_to_arduino[Can connect a LED and pushbutton to Arduino]
      can_connect_a_led_and_ldr_to_arduino[Can connect a LED and LDR to Arduino]
      can_connect_a_led_and_potmeter_to_arduino[Can connect a LED and potmeter to Arduino]
      can_connect_a_led_and_joystick_to_arduino[Can connect a LED and joystick to Arduino]
      can_connect_a_led_and_button_and_ldr_to_arduino[Can connect a LED and button and LDR to Arduino]
      can_connect_a_led_and_button_and_potmeter_to_arduino[Can connect a LED and button and potmeter to Arduino]
      can_connect_a_led_and_button_and_joystick_to_arduino[Can connect a LED and button and joystick to Arduino]
      can_connect_a_many_leds_to_arduino[Can connect many LEDs to Arduino]
      can_connect_an_rgb_led_to_arduino[Can connect an RGB LED to Arduino]
    end
    style sub_arduino fill:#ccf,color:#000,stroke:#ccf



    %% A new learner
    a_new_learner --> |Lektion x: an LED|can_connect_a_led_to_5v

    %% Electronics
    can_connect_a_led_to_5v --> can_connect_a_led_and_button_to_5v
    can_connect_a_led_to_5v --> can_connect_a_led_and_ldr_to_5v
    can_connect_a_led_to_5v --> can_connect_a_led_and_potmeter_to_5v
    can_connect_a_led_to_5v --> can_connect_a_led_and_joystick_to_5v
    can_connect_a_led_and_button_to_5v --> can_connect_a_led_and_button_and_ldr_to_5v
    can_connect_a_led_and_ldr_to_5v --> can_connect_a_led_and_button_and_ldr_to_5v
    can_connect_a_led_and_button_to_5v --> can_connect_a_led_and_button_and_potmeter_to_5v
    can_connect_a_led_and_potmeter_to_5v --> can_connect_a_led_and_button_and_potmeter_to_5v
    can_connect_a_led_and_button_to_5v --> can_connect_a_led_and_button_and_joystick_to_5v
    can_connect_a_led_and_joystick_to_5v --> can_connect_a_led_and_button_and_joystick_to_5v
    can_connect_a_led_to_5v --> can_connect_an_rgb_led_to_5v

    %% Electronics is below Arduino
    can_connect_a_led_and_button_and_joystick_to_5v ~~~ can_connect_a_led_to_arduino

    %% Electronics to Arduino
    can_connect_a_led_to_5v --> |Lektion x: Blink|can_connect_a_led_to_arduino
    can_connect_a_led_and_button_and_joystick_to_5v --> can_connect_a_led_and_button_and_joystick_to_arduino
    can_connect_a_led_and_button_and_ldr_to_5v --> can_connect_a_led_and_button_and_ldr_to_arduino
    can_connect_a_led_and_button_and_potmeter_to_5v --> can_connect_a_led_and_button_and_potmeter_to_arduino
    can_connect_a_led_and_button_to_5v --> can_connect_a_led_and_button_to_arduino
    can_connect_a_led_and_joystick_to_5v --> can_connect_a_led_and_joystick_to_arduino
    can_connect_a_led_and_ldr_to_5v --> can_connect_a_led_and_ldr_to_arduino
    can_connect_a_led_and_potmeter_to_5v --> can_connect_a_led_and_potmeter_to_arduino
    can_connect_a_many_leds_to_5v --> |Lektion x: Blink Blink Blink| can_connect_a_many_leds_to_arduino
    can_connect_an_rgb_led_to_5v --> can_connect_an_rgb_led_to_arduino

    %% Arduino
    can_connect_a_led_to_arduino --> can_connect_a_led_and_button_to_arduino
    can_connect_a_led_to_arduino --> can_connect_a_led_and_ldr_to_arduino
    can_connect_a_led_to_arduino --> can_connect_a_led_and_potmeter_to_arduino
    can_connect_a_led_to_arduino --> can_connect_a_led_and_joystick_to_arduino
    can_connect_a_led_and_button_to_arduino --> can_connect_a_led_and_button_and_ldr_to_arduino
    can_connect_a_led_and_ldr_to_arduino --> can_connect_a_led_and_button_and_ldr_to_arduino
    can_connect_a_led_and_button_to_arduino --> can_connect_a_led_and_button_and_potmeter_to_arduino
    can_connect_a_led_and_potmeter_to_arduino --> can_connect_a_led_and_button_and_potmeter_to_arduino
    can_connect_a_led_and_button_to_arduino --> can_connect_a_led_and_button_and_joystick_to_arduino
    can_connect_a_led_and_joystick_to_arduino --> can_connect_a_led_and_button_and_joystick_to_arduino
    can_connect_a_led_to_arduino --> can_connect_an_rgb_led_to_arduino
```
