.class public Lcom/join/mgps/dto/FirstScreenAdInteractionBean$ShakeConfBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/FirstScreenAdInteractionBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShakeConfBean"
.end annotation


# instance fields
.field private acceleration:I

.field private duration:I

.field private rotation_angle:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getAcceleration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FirstScreenAdInteractionBean$ShakeConfBean;->acceleration:I

    .line 2
    .line 3
    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FirstScreenAdInteractionBean$ShakeConfBean;->duration:I

    .line 2
    .line 3
    return v0
.end method

.method public getRotation_angle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FirstScreenAdInteractionBean$ShakeConfBean;->rotation_angle:I

    .line 2
    .line 3
    return v0
.end method

.method public setAcceleration(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "acceleration"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FirstScreenAdInteractionBean$ShakeConfBean;->acceleration:I

    .line 2
    .line 3
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FirstScreenAdInteractionBean$ShakeConfBean;->duration:I

    .line 2
    .line 3
    return-void
.end method

.method public setRotation_angle(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation_angle"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FirstScreenAdInteractionBean$ShakeConfBean;->rotation_angle:I

    .line 2
    .line 3
    return-void
.end method
