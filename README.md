# 🌡️ Temperature Converter in MIPS Assembly

**Course:** Computer Organization and Architecture (SWE-212L)
**Semester:** 3rd | **Batch:** 2023F | **Section:** F
**University:** Sir Syed University of Engineering & Technology (SSUET)
**Department:** Software Engineering

---

## 👨‍💻 Team Members

| Name                | Role                       |
| ------------------- | -------------------------- |
| **Syed Azan Amir**  | Implementation & Debugging |
| **Muhammad Safwan** | Testing & Documentation    |
| **Shaheer Abbassi** | Flowchart & Logic Design   |
| **Muhammad Tariq**  | Algorithm Design & Report  |

---

## 🎯 Objective

The goal of this project is to create a **Temperature Conversion Program** in **MIPS Assembly Language** that converts temperatures between **Celsius (°C)** and **Fahrenheit (°F)**.

It demonstrates how **basic arithmetic, branching, and user input** are handled at the assembly level, showcasing the connection between **software logic and computer architecture.**

---

## ⚙️ Problem Statement

Temperature conversion between **Celsius** and **Fahrenheit** is a frequent requirement in daily life, science, and engineering.
Manual calculations are error-prone, so an automated converter in **assembly language** provides both accuracy and educational value.

---

## 💡 Solution

This MIPS Assembly program:

1. Prompts the user to select conversion type:

   * `1 → Celsius to Fahrenheit`
   * `2 → Fahrenheit to Celsius`
2. Takes a numeric input (temperature value).
3. Performs the required conversion using formulas below.
4. Displays the result in the selected scale.

### 🔹 Conversion Formulas

```
Celsius → Fahrenheit:  F = (C × 9/5) + 32
Fahrenheit → Celsius:  C = (F − 32) × 5/9
```

---

## 🧩 Methodology

### 🔸 Step 1: User Interaction

Prompt user for conversion type and input value.

### 🔸 Step 2: Arithmetic Operation

Perform the correct formula based on user choice using **floating-point registers**.

### 🔸 Step 3: Output

Display result with an appropriate label (`°C` or `°F`).

---

## 📊 Flowchart
![Screenshot_2025-01-16-07-13-52-04_40deb401b9ffe8e1df2f1cc5ba480b12](https://github.com/user-attachments/assets/1a543bc3-34ff-4fba-9d87-ffc751b0f5b0)


---

## 🧮 MIPS Code 

<img width="441" height="438" alt="image" src="https://github.com/user-attachments/assets/12087a0c-c653-41bc-9dbf-e173ed9e939a" />
<img width="441" height="438" alt="image" src="https://github.com/user-attachments/assets/0011663e-9d06-4391-8bb6-bbd0750c3c4e" />
<img width="433" height="396" alt="image" src="https://github.com/user-attachments/assets/1b1e393f-3e97-4d97-98be-0d533a93136b" />
<img width="444" height="163" alt="image" src="https://github.com/user-attachments/assets/742cd654-6d17-4bc7-8b8a-85938671797e" />




---

## 🧠 Results
<img width="479" height="132" alt="image" src="https://github.com/user-attachments/assets/8252fb84-256e-4c6c-9fb4-23a51e770d07" />

✅ Successfully converts between Celsius and Fahrenheit
✅ Accurate results verified with sample inputs
✅ Demonstrates MIPS arithmetic, branching, and system calls
✅ Floating-point calculations handled using FPU

---

## 🔬 Applications

| Field                   | Use Case                                                  |
| ----------------------- | --------------------------------------------------------- |
| **Scientific Research** | Quick temperature conversion in lab experiments           |
| **Engineering**         | Conversion for thermal, energy, and material studies      |
| **Meteorology**         | Temperature reporting in different scales                 |
| **Embedded Systems**    | Integration into temperature-sensing microcontrollers     |
| **Education**           | Teaching tool for understanding assembly-level arithmetic |

---

## 🔮 Future Enhancements

* Add **Kelvin conversion** support
* Implement **error handling** for invalid input
* Include **graphical/text-based UI** for better user interaction
* Extend program for **embedded temperature sensors**

---

## 🏁 Conclusion

The **Temperature Converter in MIPS Assembly** demonstrates how **low-level instructions** handle arithmetic, I/O, and branching.
It bridges the gap between **software logic and computer architecture**, helping students understand how processors execute even simple programs.

The project successfully fulfills its goal and can be extended for **real-time embedded applications** in the future.

---

## 📚 References

1. *MIPS Assembly Language Programming* — Robert L. Britton
2. *MIPS Architecture Reference Manual*
3. Online resources: Stack Overflow, MIPS forums, and educational blogs

---

## 🧾 License

This project was developed as part of **COA Lab (SWE-212L)** at
**Sir Syed University of Engineering & Technology (SSUET)**.
© 2025 – Team 2023F-BSE-F. All rights reserved.


