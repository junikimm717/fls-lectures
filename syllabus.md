---
title: 6.S913 Fundamentals of Linux Systems
author:
- Juni Kim (junickim)
date: \today
geometry: margin=1in
---

This class is intended as a crash course for students to understand the basics
of how modern Linux systems operate and for students to construct one from
scratch.

# Staff

**Instructor** - Juni Kim (junickim), [https://junic.kim](https://junic.kim)

**Teaching Assistant** - Jacky Zhao (icecream)

# Prerequisites

Students are expected to be comfortable working in Unix/Linux environments and
using the command line as their primary interface for development.

It would be strongly preferred that students can:

- Navigate and manipulate the filesystem using shell commands
- Write and debug simple shell scripts
- Understand environment variables, PATH resolution, and program invocation
- Understand how to compile software from source using tools such as `make`

Prior coursework in operating systems or systems programming is helpful but not
required.

# Logistics

Please join the piazza at
[https://piazza.com/mit/spring2026/6s913](https://piazza.com/mit/spring2026/6s913).
Announcements and any other class discussion will take place there.

Lectures and lab hours will take place at **34-301**. We will try our best to
record lectures and allow for remote participation.

The course will move quite fast, so lecture and lab hour participation is
strongly recommended. Lectures 1-4 come with an associated handout that students
are expected to read to complete the assignment.

# Assignment

The assignment for this course has four main parts, named `busybox`, `kernel`,
`user`, `image`, which represent different stages of an OS bootstrapping build
system. All parts must be completed and integrated together to receive credit
for the course. The parts all rely on one another. The assignment must be
submitted by **Friday, January 30, 2026 11:59PM GMT-5**.

Students will be given a somewhat minimal scaffold for their projects and will
be responsible for submitting a tarball for their project. More instructions are
in the assignment repository README.

A significant part of this course is learning to maintain clean, reproducible
filesystem state. Projects will be evaluated on a fresh system, and any reliance
on undeclared or residual state (e.g. working directory, undeclared environment
variables, artifacts that weren't cleaned up) will be treated as a correctness
issue.

The assignment should be done on sufficiently modern hardware (for reference, you should
expect to compile the linux kernel). Docker is required on all systems, and
Windows users are strongly advised to use wsl.

There will be multiple lab hours designed to help students with the checkpoints.

We will only grade the final submissions of those who have registered for
credit. Submission logistics will be announced later.

# Schedule

All lectures and lab hours are expected to take place at **34-301**.

## Lecture 1 - Tuesday 1/20 1-3PM

- Course structure, expectations, and assignment overview
- Writing correct shell scripts in hostile environments
- Working directory, filesystem state, and environment variables
- Host vs target systems
- Docker as host-system standardization

## Lecture 2 - Wednesday 1/21 1-3PM

- Build pipelines and required invariants
- Source vs artifact distinction
- C build systems: configure, make, install
- Compiler and linker flags, libc concerns
- Using QEMU and why kernels need an initramfs

## Lab 1 - Wednesday 1/21 End of Lecture-5PM

Help will be available for all parts of the lab, but we will prioritize those
with questions about lab setup and the `busybox` section.

## Lecture 3 - Friday 1/23 1-3PM

- Kernel role during boot and early system bring-up
- Manual kernel configuration with `make menuconfig`
- Kernel command line and serial console configuration
- Initramfs construction and pseudo-filesystems (/proc, /dev, /sys, ...)
- `switch_root` and transition to real userspace

## Lab 2 - Friday 1/23 End of Lecture-5PM

Help will be available for all parts of the lab, but we will prioritize those
with questions regarding the `kernel` and `image` section.

By this point, students should have a compiled and working kernel binary and the
ability to boot up a kernel into an initramfs.

## Lecture 4 - Monday 1/26 1-3PM

- Persistent userspace and filesystem hierarchy
- Init systems and BusyBox init configuration
- Users, groups, and permission-critical files
- Essential system daemons (getty, eudev, dhcpcd, chrony)
- Disk images, filesystems, and EFI boot flow
  - GUID Partition Table

## Lab 3 - Tuesday 1/26 1-5PM

Help will focus on the `image` and `user` sections of the lab.

## Lecture 5 - Thursday 1/29 1-3PM

- Review of core system-building concepts
- Additional topics:
  - SUID binaries and controlled privilege escalation
  - User and group configuration
  - Time, certificates, and other system-level configuration

## Lab 4 - Thursday 1/29 End of Lecture-5PM

Help will focus on the `image` and `user` sections of the lab.

## Assignment DUE - Friday 1/30 11:59PM ET

# Policies around AI

Use of AI tools is permitted. We encourage using AI in a similar way to a search
engine, reference manual, or debugging assistant (e.g. clarifying error
messages, understanding documentation, or recalling command syntax).

However, use of agentic IDEs or tools that substantially offload reasoning,
design decisions, or understanding is strongly discouraged. Submitting work you
do not understand defeats the purpose of the course.

A central goal of this course is learning to reason about Linux systems rather
than cargo culting commands or configuration (i.e. copying commands or options
without understanding why they are needed). You are expected to be able to
explain and justify the commands and design choices used in your submission.
