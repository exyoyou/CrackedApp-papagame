.class public Lcom/byazt/mg/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xaa,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/mg/tt$tt;,
        Lcom/byazt/mg/tt$c;
    }
.end annotation


# static fields
.field public static final c:Lcom/byazt/mg/tt$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/mg/tt$tt;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/byazt/mg/tt$tt;-><init>(Lcom/byazt/mg/tt$1;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/byazt/mg/tt;->c:Lcom/byazt/mg/tt$c;

    .line 8
    .line 9
    return-void
.end method

.method public static c(Landroid/os/Debug$MemoryInfo;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/mg/tt;->c:Lcom/byazt/mg/tt$c;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/byazt/mg/tt$c;->c(Landroid/os/Debug$MemoryInfo;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static tt(Landroid/os/Debug$MemoryInfo;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/mg/tt;->c:Lcom/byazt/mg/tt$c;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/byazt/mg/tt$c;->tt(Landroid/os/Debug$MemoryInfo;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static ve(Landroid/os/Debug$MemoryInfo;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/mg/tt;->c:Lcom/byazt/mg/tt$c;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/byazt/mg/tt$c;->ve(Landroid/os/Debug$MemoryInfo;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
