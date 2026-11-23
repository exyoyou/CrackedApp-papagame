.class public abstract Lcom/byazt/ip/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ip/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x553,
        0x14
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public da:I

.field public i:Lcom/byazt/ete/ic;

.field public sl:Ljava/lang/String;

.field public sp:I

.field public x:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/byazt/ip/c;->da:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/byazt/ip/c;->c:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/byazt/ip/c;->sl:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ip/c;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ip/c;->sl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
