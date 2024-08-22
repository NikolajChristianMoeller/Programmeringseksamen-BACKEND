package org.example.programmeringseksamenbackend.errorhandling.exception;

public class ValidationException extends RuntimeException {
    public ValidationException(String message) {
        super("Validation error: " + message);
    }
}
