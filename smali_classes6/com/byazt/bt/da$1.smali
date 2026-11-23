.class public final Lcom/byazt/bt/da$1;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x112,
        0x138
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/bt/da;->tt(Landroid/content/Context;Lcom/byazt/dna/c;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/content/Context;

.field public final synthetic tt:Lcom/byazt/dna/c;

.field public final synthetic ve:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/byazt/dna/c;I)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/byazt/bt/da$1;->c:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/bt/da$1;->tt:Lcom/byazt/dna/c;

    .line 4
    .line 5
    iput p4, p0, Lcom/byazt/bt/da$1;->ve:I

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/bt/da$1;->c:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/bt/da$1;->tt:Lcom/byazt/dna/c;

    .line 4
    .line 5
    iget v2, p0, Lcom/byazt/bt/da$1;->ve:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/byazt/bt/da;->c(Landroid/content/Context;Lcom/byazt/dna/c;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
