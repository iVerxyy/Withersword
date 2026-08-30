# Withersword v0.1.0 (Alpha Release)

Welcome to the official repository for **Withersword**, a classic retro top-down open-world Action RPG. Built from the ground up utilizing the power of the **Godot Engine 4.x** and custom high-fidelity pixel art assets drawn manually inside **Aseprite**.

[![Godot Engine](https://img.shields.io/badge/Godot-%23FFFFFF.svg?logo=godot-engine)](#)

---

<img width="574" height="240" alt="demo vid 1 for witheredsword" src="https://github.com/user-attachments/assets/edab968e-fd5f-4223-b9cd-2882939cf795" />


## Regular Features:
 - Interaction with NPC's across the world
 - Fun, dynamic directional combat, awesome sword swings based on the location of the cursor.
 - Open world exploration


## Advanced features & Game mechanics (v0.1.0 Launch)
Features include:

* **Vertex Shader Hit Feedback:** Enemies utilize a custom CanvasItem GLSL shader pipeline to seamlessly flash pure white upon impact without changing underlying sprite properties.
* **Physics-Integrated Recoil & Knockback:** Combat impacts utilize vector-based math calculations written in GD-Script to smoothly displace targets via friction decay (`move_toward`), avoiding choppy frame-teleportation bugs.
* **Synchronized HUD System:** A custom User Interface heart tracker (designed in aseptite) overlay hooked directly into player script variables that updates its rendering state dynamically based on player health.
* **Custom Global Brand-Injections:** The application features a fully custom cursor scheme and embedded asset metadata, presenting a highly polished standalone execution layer on desktop architectures.

<img width="574" height="240" alt="demo vid 2 for witheredsword" src="https://github.com/user-attachments/assets/5e123279-0069-40e8-8204-653880690a57" />


---

## Game Controls
*   **Movement Axis:** `W`, `A`, `S`, `D` keys for grid layout navigation.
*   **Weapon Swing:** `Left Mouse Click` to activate the dynamic attack hitbox sequence.

---

## Asset attributions
*   **Graphic Design Workspace:** Handcrafted textures, environment layouts, tile map configurations, and animations compiled completely in **Aseprite**.
*   **Engine Core Platform:** Managed under the open-source frameworks of the **Godot Engine community architecture**.

---

## Development Roadmap (Upcoming v0.2.0 Pipeline)
*   [ ] Implement proximity-based Enemy AI Pathfinding and Chasing behaviors.
*   [ ] Integrate active sword impact frames targeting the slime entities to deal dynamic reciprocal damage.
*   [ ] Create fully simulated drop item entities (such as score tokens, keys, and consumable health pickups).
