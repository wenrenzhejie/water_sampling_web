package com.it666.water_sampling.bean;

public class Bottle {
    private Integer id;

    private BottleType bottleType;

    private String qrcode;

    private String rfic;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public BottleType getBottleType() {
        return bottleType;
    }

    public void setBottleType(BottleType bottleType) {
        this.bottleType = bottleType;
    }

    public String getQrcode() {
        return qrcode;
    }

    public void setQrcode(String qrcode) {
        this.qrcode = qrcode == null ? null : qrcode.trim();
    }

    public String getRfic() {
        return rfic;
    }

    public void setRfic(String rfic) {
        this.rfic = rfic == null ? null : rfic.trim();
    }
}