# ⚔️ Withersword — v0.1.0 (Alpha Release)

Welcome to the official repository for **Withersword**, a classic retro top-down open-world Action RPG. Built from the ground up utilizing the power of the **Godot Engine 4.x** and custom high-fidelity pixel art assets drawn manually inside **Aseprite**.

---

## 🚀 Core Engine Features (v0.1.0 Launch)
This initial milestone build establishes a fully modular and responsive framework for top-down action combat:

*   **Dynamic Directional Combat:** Fluid sword swings with instantaneous direction mirroring based on real-time mouse tracking.
*   **Vertex Shader Hit Feedback:** Enemies utilize a custom CanvasItem GLSL shader pipeline to seamlessly flash pure white upon impact without changing underlying sprite properties.
*   **Physics-Integrated Recoil & Knockback:** Combat impacts utilize vector-based math calculations to smoothly displace targets via friction decay (`move_toward`), avoiding choppy frame-teleportation bugs.
*   **Synchronized HUD System:** A custom User Interface heart tracker overlay hooked directly into player script variables that updates its rendering state dynamically based on player health.
*   **Custom Global Brand-Injections:** The application features a fully custom cursor scheme and embedded asset metadata, presenting a highly polished standalone execution layer on desktop architectures.

---

## 🎮 Game Controls
*   **Movement Axis:** `W`, `A`, `S`, `D` keys for grid layout navigation.
*   **Weapon Swing:** `Left Mouse Click` to activate the dynamic attack hitbox sequence.

---

## 🛠️ How to Launch and Build the Source Code

To inspect the code framework, modify scripts, or run the game environment within the editor pipeline, follow these configuration instructions:

### Prerequisites
*   Ensure you have **Godot Engine v4.x** (or a higher stable distribution branch) installed on your system layout.

### Installation Steps
1.  **Clone the Repository:** Download the project files cleanly using the Git terminal sequence or via the GitHub Desktop interface.
    ```bash
    git clone https://github.com
    ```
2.  **Import the Project:** Open your local Godot Project Manager, click the **Import** button on the right sidebar, and navigate to your downloaded folder directory.
3.  **Target the Project Profile:** Select the master configuration index file named `project.godot` and choose **Import & Edit**.
4.  **Execute Runtime:** Once inside the editor viewspace workspace, hit **`F5`** on your keyboard to instantly trigger a clean local runtime sequence of the game world!

---

## 🎨 Asset attributions
*   **Graphic Design Workspace:** Handcrafted textures, environment layouts, tile map configurations, and animations compiled completely in **Aseprite**.
*   **Engine Core Platform:** Managed under the open-source frameworks of the **Godot Engine community architecture**.

---

## 📜 Development Roadmap (Upcoming v0.2.0 Pipeline)
*   [ ] Implement proximity-based Enemy AI Pathfinding and Chasing behaviors.
*   [ ] Integrate active sword impact frames targeting the slime entities to deal dynamic reciprocal damage.
*   [ ] Create fully simulated drop item entities (such as score tokens, keys, and consumable health pickups).
