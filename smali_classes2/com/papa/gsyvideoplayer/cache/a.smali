.class public Lcom/papa/gsyvideoplayer/cache/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/papa/gsyvideoplayer/cache/b;",
            ">;"
        }
    .end annotation
.end field


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

.method public static a()Lcom/papa/gsyvideoplayer/cache/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/gsyvideoplayer/cache/a;->a:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-class v0, Lcom/papa/gsyvideoplayer/cache/c;

    .line 6
    .line 7
    sput-object v0, Lcom/papa/gsyvideoplayer/cache/a;->a:Ljava/lang/Class;

    .line 8
    .line 9
    :cond_0
    :try_start_0
    sget-object v0, Lcom/papa/gsyvideoplayer/cache/a;->a:Ljava/lang/Class;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/papa/gsyvideoplayer/cache/b;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_1
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :goto_0
    const/4 v0, 0x0

    .line 28
    return-object v0
.end method

.method public static b(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/papa/gsyvideoplayer/cache/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/papa/gsyvideoplayer/cache/a;->a:Ljava/lang/Class;

    .line 2
    .line 3
    return-void
.end method
