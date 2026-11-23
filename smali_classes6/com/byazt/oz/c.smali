.class public Lcom/byazt/oz/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd5,
        0x14
    }
.end annotation


# instance fields
.field public c:I

.field public tt:Ljava/lang/String;

.field public ve:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/byazt/oz/c;->c:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/oz/c;->tt:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/oz/c;->ve:Ljava/lang/Throwable;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/oz/c;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/c;->tt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/c;->ve:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method
