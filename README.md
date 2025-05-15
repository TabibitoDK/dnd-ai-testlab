# D&D AI Test Lab

A Godot-based interactive map viewer for tabletop roleplaying games.

## Overview

This project implements an interactive map viewer using Godot 4, allowing users to explore high-resolution maps with intuitive controls.

## Features

- High-resolution map integration
- Smooth zoom functionality with configurable min/max levels
- Camera panning with middle mouse button
- Scale-aware movement speed

## Updates

### May 15, 2025
- Implemented camera panning system with middle mouse button
- Added zoom functionality with mouse wheel
- Set up scale-dependent movement speed for better navigation
- Integrated high-resolution map viewing capability
- Configured controller system with signal-based communication

## Controls

- **Zoom**: Mouse wheel up/down
- **Pan**: Middle mouse button + drag

## Technical Structure

- Camera system with constrained zoom levels (0.08 to 1.0)
- Controller-based input handling with signal communication
- Scale-aware movement speed (adjusts with zoom level)
