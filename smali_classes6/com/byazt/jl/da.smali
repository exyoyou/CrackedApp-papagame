.class public Lcom/byazt/jl/da;
.super Lcom/byazt/jl/n;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x9d,
        0x48
    }
.end annotation


# static fields
.field public static final c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "IDAT"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/jl/n;->c(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput v0, Lcom/byazt/jl/da;->c:I

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/jl/n;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
