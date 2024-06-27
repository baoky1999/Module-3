package services.iml;

import services.IServiceConverter;

public class ConverterService implements IServiceConverter {
    @Override
    public double convert(double rate, double usd) {
        return rate * usd;
    }
}
