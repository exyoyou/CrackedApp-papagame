.class public Lcom/haima/hmcp/beans/DeviceState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final JOYSTICK_PS:Ljava/lang/String; = "PS"

.field public static final JOYSTICK_XBOX:Ljava/lang/String; = "XBOX"

.field public static final JOYSTICK_XBOX_VIRTUAL:Ljava/lang/String; = "PS"

.field public static final STATE_CONNECT:Z = true

.field public static final STATE_DISCONNECT:Z


# instance fields
.field private active:Z

.field private connect:Z

.field private deviceInfo:Ljava/lang/String;

.field private slot:I


# direct methods
.method public constructor <init>(IZLjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/haima/hmcp/beans/DeviceState;->slot:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/haima/hmcp/beans/DeviceState;->connect:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/haima/hmcp/beans/DeviceState;->deviceInfo:Ljava/lang/String;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/haima/hmcp/beans/DeviceState;->active:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getActive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/beans/DeviceState;->active:Z

    .line 2
    .line 3
    return v0
.end method

.method public getConnect()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/beans/DeviceState;->connect:Z

    .line 2
    .line 3
    return v0
.end method

.method public getDeviceInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/DeviceState;->deviceInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSlot()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/DeviceState;->slot:I

    .line 2
    .line 3
    return v0
.end method

.method public setActive(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/beans/DeviceState;->active:Z

    .line 2
    .line 3
    return-void
.end method

.method public setConnect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/beans/DeviceState;->connect:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDeviceInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/beans/DeviceState;->deviceInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSlot(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/DeviceState;->slot:I

    .line 2
    .line 3
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "connect"

    .line 7
    .line 8
    iget-boolean v2, p0, Lcom/haima/hmcp/beans/DeviceState;->connect:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "slot"

    .line 14
    .line 15
    iget v2, p0, Lcom/haima/hmcp/beans/DeviceState;->slot:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    const-string v1, "deviceInfo"

    .line 21
    .line 22
    iget-object v2, p0, Lcom/haima/hmcp/beans/DeviceState;->deviceInfo:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v1, "active"

    .line 28
    .line 29
    iget-boolean v2, p0, Lcom/haima/hmcp/beans/DeviceState;->active:Z

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "SceneDevice{, connect="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/DeviceState;->connect:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", slot=\'"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/haima/hmcp/beans/DeviceState;->slot:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x27

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, ", deviceInfo=\'"

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/haima/hmcp/beans/DeviceState;->deviceInfo:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", active="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-boolean v1, p0, Lcom/haima/hmcp/beans/DeviceState;->active:Z

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const/16 v1, 0x7d

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    return-object v0
.end method
