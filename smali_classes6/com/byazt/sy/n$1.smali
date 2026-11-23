.class public Lcom/byazt/sy/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ip/uj$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x210,
        0xdb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/sy/n;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/sy/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Lcom/byazt/sy/n;


# direct methods
.method public constructor <init>(Lcom/byazt/sy/n;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sy/n$1;->tt:Lcom/byazt/sy/n;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/sy/n$1;->c:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ip/tt;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/byazt/ha/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/byazt/ha/x;

    .line 6
    .line 7
    iget v0, p0, Lcom/byazt/sy/n$1;->c:I

    .line 8
    .line 9
    iput v0, p1, Lcom/byazt/ha/x;->ve:I

    .line 10
    .line 11
    :cond_0
    return-void
.end method
