.class public Lorg/greenrobot/eventbus/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/eventbus/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


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

.method public static a()Lorg/greenrobot/eventbus/f;
    .locals 1

    .line 1
    invoke-static {}, Lcd/a;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcd/a;->b()Lcd/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcd/a;->a:Lorg/greenrobot/eventbus/f;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Lorg/greenrobot/eventbus/f$c;

    .line 15
    .line 16
    invoke-direct {v0}, Lorg/greenrobot/eventbus/f$c;-><init>()V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
