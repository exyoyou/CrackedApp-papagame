.class public Lcom/byazt/dl/tt$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d1,
        0xc2
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/dl/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public final c:J

.field public final tt:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/byazt/dl/tt$c;->c:J

    .line 4
    iput-object p3, p0, Lcom/byazt/dl/tt$c;->tt:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Lcom/byazt/dl/tt$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/dl/tt$c;-><init>(JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/dl/tt$c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/dl/tt$c;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic tt(Lcom/byazt/dl/tt$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/dl/tt$c;->tt:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
