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
strongly recommended.

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

- Course structure
- A review over shell scripting fundamentals including environment variables,
  program invocation, and path resolution.
- Principles behind build scripts: Filesystem hygiene, working directory invariance,
  idempotency, environment variable manipulation.
- How does one use docker? Why is it so important?

## Lecture 2 - Wednesday 1/21 1-3PM

- Understanding the build process
  (`./configure`, `make -jn`, `make install DESTDIR=...`)
  and all the tools that make that possible.
- The source vs artifact distinction
- What are the different compile flags? Why does the libc matter so much?
- How does one use QEMU (the virtualization software used in the course) and
  what are the most important options?
- (related to above) why do you need the kernel and initramfs archive?

**live demo**: show a booting kernel alongside an initramfs.

## Lab 1 - Wednesday 1/21 End of Lecture-5PM

Help will be available for all parts of the lab, but we will prioritize those
with questions about lab setup and the `busybox` section.

## Lecture 3 - Friday 1/23 1-3PM

- Continuing Lecture 2: Reminder on script correctness
- Manual kernel configuration (modules, drivers, ...), show how `make menuconfig` works
- What is the kernel command line? Why is it so important?
- Real and Pseudo filesystems
  - Demo of why we need /proc, /dev, /sys, /tmp ...
- The role of `switch_root`
- What does init actually do? Why did systemd become a thing?

## Lab 2 - Friday 1/23 End of Lecture-5PM

Help will be available for all parts of the lab, but we will prioritize those
with questions regarding the `kernel` and `image` section.

By this point, students should have a compiled and working kernel binary and the
ability to boot up a kernel into an initramfs.

## Lecture 4 - Monday 1/26 1-3PM

- Mounting userland filesystems, determining user permissions
- How init schemes work (demonstration with busybox's init)
- Students should know how a bootable image file works, including how partition
  tables, filesystems, and firmware interact.
  - What are all the filesystem tools that get used
  - How does the hardware know what to boot (special case of EFI firmware), and
    why can we just let the kernel take care of it?
- Important daemons (getty, eudev, chrony, dhcpcd) and why you need them

## Lab 3 - Tuesday 1/26 1-5PM

Help will focus on the `image` and `user` sections of the lab.

## Lecture 5 - Thursday 1/29 1-3PM

- SUID binaries (doas)
- Configuring users and groups
- Some other advanced topics
  - Certificate authorities for https requests (openssl)
  - Timezone data
- Course Wrapup

## Lab 4 - Thursday 1/29 End of Lecture-5PM

Help will focus on the `image` and `user` sections of the lab.

## Assignment DUE - Friday 1/30 11:59PM ET
