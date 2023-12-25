# Learning line

How the topics relate


```mermaid
flowchart TD

    %% Give a white background, instead of a transparent one
    classDef node fill:#fff,color:#000,stroke:#000
    classDef skill_node fill:#fff,color:#000,stroke:#000,stroke-width:4px

    subgraph sub_electronics[Electronics]
      can_connect_a_led_to_5v[Can connect a LED to 5V]
      can_connect_a_led_and_button_to_5v[Can connect a LED and pushbutton to 5V]
      can_connect_a_led_and_ldr_to_5v[Can connect a LED and LDR to 5V]
      can_connect_a_led_and_potmeter_to_5v[Can connect a LED and potmeter to 5V]
      can_connect_a_led_and_joystick_to_5v[Can connect a LED and joystick to 5V]
      can_connect_a_led_and_button_and_ldr_to_5v[Can connect a LED and button and LDR to 5V]
      can_connect_a_led_and_button_and_potmeter_to_5v[Can connect a LED and button and potmeter to 5V]
      can_connect_a_led_and_button_and_joystick_to_5v[Can connect a LED and button and joystick to 5V]
      can_connect_an_rgb_led_to_5v[Can connect an RGB LED to 5V]
    end
    style sub_electronics fill:#cfc,color:#000,stroke:#cfc

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
```
