.class public Lcom/byazt/px/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b2,
        0x62
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/px/c;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/px/c;


# direct methods
.method public constructor <init>(Lcom/byazt/px/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/px/c$4;->c:Lcom/byazt/px/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/px/c$4;->c:Lcom/byazt/px/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/px/c;->ve:Lcom/byazt/sc/tt;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/byazt/sc/tt;->c()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
