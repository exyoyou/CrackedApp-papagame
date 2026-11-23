.class Lorg/ppsspp/ppsspp/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final c:Ljava/lang/String; = "LocationHelper"


# instance fields
.field private a:Landroid/location/LocationManager;

.field private b:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "location"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/location/LocationManager;

    .line 11
    .line 12
    iput-object p1, p0, Lorg/ppsspp/ppsspp/f;->a:Landroid/location/LocationManager;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lorg/ppsspp/ppsspp/f;->b:Z

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method a()V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lorg/ppsspp/ppsspp/f;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lorg/ppsspp/ppsspp/f;->a:Landroid/location/LocationManager;

    .line 6
    .line 7
    const-string v1, "gps"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/ppsspp/ppsspp/f;->a:Landroid/location/LocationManager;

    .line 13
    .line 14
    const-string v1, "network"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lorg/ppsspp/ppsspp/f;->a:Landroid/location/LocationManager;

    .line 20
    .line 21
    const-string v3, "gps"

    .line 22
    .line 23
    const-wide/16 v4, 0x3e8

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    move-object v7, p0

    .line 27
    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 28
    .line 29
    .line 30
    iget-object v7, p0, Lorg/ppsspp/ppsspp/f;->a:Landroid/location/LocationManager;

    .line 31
    .line 32
    const-string v8, "network"

    .line 33
    .line 34
    const-wide/16 v9, 0x3e8

    .line 35
    .line 36
    const/4 v11, 0x0

    .line 37
    move-object v12, p0

    .line 38
    invoke-virtual/range {v7 .. v12}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lorg/ppsspp/ppsspp/f;->b:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "Cannot start location updates: "

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :cond_0
    :goto_0
    return-void
.end method

.method b()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/ppsspp/ppsspp/f;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lorg/ppsspp/ppsspp/f;->b:Z

    .line 7
    .line 8
    iget-object v0, p0, Lorg/ppsspp/ppsspp/f;->a:Landroid/location/LocationManager;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    double-to-float v2, v0

    .line 6
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    double-to-float v3, v0

    .line 11
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    double-to-float v4, v0

    .line 16
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    const-wide/16 v7, 0x3e8

    .line 29
    .line 30
    div-long v7, v0, v7

    .line 31
    .line 32
    invoke-static/range {v2 .. v8}, Lorg/ppsspp/ppsspp/NativeApp;->pushNewGpsData(FFFFFJ)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
