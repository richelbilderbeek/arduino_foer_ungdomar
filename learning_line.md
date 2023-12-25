# Learning line

How the topics relate


```mermaid
flowchart TD

    %% Give a white background, instead of a transparent one
    classDef node fill:#fff,color:#000,stroke:#000
    classDef electronics_skill_node fill:#9f9,color:#000,stroke:#000
    classDef arduino_skill_node fill:#99f,color:#000,stroke:#000
    classDef programming_skill_node fill:#f99,color:#000,stroke:#000
    classDef lesson_node fill:#fff,color:#000,stroke:#000,stroke-width:3px

    %%subgraph sub_electronics[Electronics]
      can_connect_a_led_to_5v[Can connect a LED to 5V]:::electronics_skill_node
      can_connect_a_led_and_button_to_5v[Can connect a LED and pushbutton to 5V]:::electronics_skill_node
      can_connect_a_led_and_ldr_to_5v[Can connect a LED and LDR to 5V]:::electronics_skill_node
      can_connect_a_led_and_potmeter_to_5v[Can connect a LED and potmeter to 5V]:::electronics_skill_node
      can_connect_a_led_and_joystick_to_5v[Can connect a LED and joystick to 5V]:::electronics_skill_node
      can_connect_a_led_and_button_and_ldr_to_5v[Can connect a LED and button and LDR to 5V]:::electronics_skill_node
      can_connect_a_led_and_button_and_potmeter_to_5v[Can connect a LED and button and potmeter to 5V]:::electronics_skill_node
      can_connect_a_led_and_button_and_joystick_to_5v[Can connect a LED and button and joystick to 5V]:::electronics_skill_node
      can_connect_a_many_leds_to_5v[Can connect many LEDs to 5V]:::electronics_skill_node
      can_connect_an_rgb_led_to_5v[Can connect an RGB LED to 5V]:::electronics_skill_node
    %%end
    %%style sub_electronics fill:#cfc,color:#000,stroke:#cfc

    %%subgraph sub_arduino[Arduino]
      can_control_a_led[Can control a LED]:::arduino_skill_node
      can_respond_to_a_button[Can respond to a button]:::arduino_skill_node
      can_respond_to_an_ldr[Can respond to an LDR]:::arduino_skill_node
      can_respond_to_a_joystick[Can respond to a joystick]:::arduino_skill_node
      can_control_many_leds[Can control many LEDs]:::arduino_skill_node
      can_control_an_rgb_led[Can control an RGB LED]:::arduino_skill_node
    %%end
    %%style sub_arduino fill:#ccf,color:#000,stroke:#ccf

    %%subgraph sub_programming[Programming]
      can_upload_code[Can upload code]:::programming_skill_node
      can_use_the_serial_monitor[Can read the serial monitor]:::programming_skill_node
      can_use_an_if_statement[Can use an if statement]:::programming_skill_node
      can_use_a_variable[Can use a variable]:::programming_skill_node
    %%end
    %%style sub_programming fill:#fcc,color:#000,stroke:#fcc

    %% Lessons, and their requirents
    lesson_can_connect_a_led_to_5v[Lesson x: Connect an LED]:::lesson_node
    can_connect_a_led_to_5v --> lesson_can_connect_a_led_to_5v

    lesson_can_control_a_led[Lesson x: Blink]:::lesson_node
    lesson_can_connect_a_led_to_5v --> lesson_can_control_a_led
    can_upload_code --> lesson_can_control_a_led

    lesson_can_connect_a_led_and_button[Lesson: connect an LED and button in series]:::lesson_node
    lesson_can_control_a_led --> lesson_can_connect_a_led_and_button
    can_connect_a_led_and_button_to_5v --> lesson_can_connect_a_led_and_button

    lesson_can_control_many_leds[Lesson x: Blink Blink Blink]:::lesson_node
    lesson_can_control_a_led --> lesson_can_control_many_leds
    can_control_many_leds --> lesson_can_control_many_leds

    lesson_can_respond_to_a_button[Lesson x: Knapp, if, else]:::lesson_node
    can_respond_to_a_button --> lesson_can_respond_to_a_button
    can_use_an_if_statement --> lesson_can_respond_to_a_button
    can_use_the_serial_monitor --> lesson_can_respond_to_a_button
    
    lesson_can_respond_to_a_button_in_time[Lesson x: Uppladdningknap]:::lesson_node
    can_use_a_variable --> lesson_can_respond_to_a_button_in_time

    lesson_can_respond_to_a_button_on_action[Lesson x: Knapp flip]:::lesson_node

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
