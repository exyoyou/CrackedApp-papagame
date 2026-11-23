.class public Lcom/byazt/gy/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x825,
        0x2e
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public tt:I

.field public ve:Lcom/byazt/cda/c;


# direct methods
.method public constructor <init>(Lcom/byazt/cda/c;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/byazt/cda/c;->tt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/gy/n;->c:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/byazt/cda/c;->ve()I

    move-result v0

    iput v0, p0, Lcom/byazt/gy/n;->tt:I

    .line 7
    iput-object p1, p0, Lcom/byazt/gy/n;->ve:Lcom/byazt/cda/c;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/byazt/gy/n;->c:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/byazt/gy/n;->tt:I

    return-void
.end method
