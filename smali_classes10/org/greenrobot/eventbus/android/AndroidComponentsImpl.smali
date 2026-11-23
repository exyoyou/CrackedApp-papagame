.class public Lorg/greenrobot/eventbus/android/AndroidComponentsImpl;
.super Lcd/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcd/c;

    .line 2
    .line 3
    const-string v1, "EventBus"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcd/c;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcd/e;

    .line 9
    .line 10
    invoke-direct {v1}, Lcd/e;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0, v1}, Lcd/a;-><init>(Lorg/greenrobot/eventbus/f;Lorg/greenrobot/eventbus/g;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
