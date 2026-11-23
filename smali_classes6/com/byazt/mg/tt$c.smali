.class public Lcom/byazt/mg/tt$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xaa,
        0xc2
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/mg/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/mg/tt$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/byazt/mg/tt$c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/os/Debug$MemoryInfo;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public tt(Landroid/os/Debug$MemoryInfo;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public ve(Landroid/os/Debug$MemoryInfo;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method
