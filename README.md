# **Zero-Knowledge Proof File Integrity Verification**

## **Overview**
This project demonstrates a Zero-Knowledge Proof (ZKP)-based system for verifying file integrity without revealing file content. It uses **Circom** for cryptographic circuit design and **SnarkJS** for proof generation and local verification.

## **Features**
- **Privacy-Preserving Verification**: Validates file hashes without exposing the file's content.
- **Cryptographic Circuit Design**: Implements ZKP circuits to verify hash equality using Circom.
- **End-to-End Workflow**: From file hash generation to proof validation locally.

## **Technologies Used**
- **Circom**: For designing cryptographic circuits.
- **SnarkJS**: For proof generation and verification.
- **Node.js**: For witness generation and scripting.
- **Python**: For generating SHA-256 file hashes.

## **Project Workflow**
1. **File Hash Generation**: Generate the SHA-256 hash of the file using Python.
2. **Circuit Design and Compilation**:
   - Create and compile the Circom circuit for hash verification.
3. **Witness and Proof Generation**:
   - Generate a witness file and create a zkSNARK proof using SnarkJS.
4. **Proof Validation**:
   - Verify the proof locally using SnarkJS.
