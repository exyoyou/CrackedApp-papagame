.class public Lcom/byazt/zu/tt$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/me/i;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x397,
        0x5f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/zu/tt;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/zu/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/zu/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zu/tt$4;->c:Lcom/byazt/zu/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/tt$4;->c:Lcom/byazt/zu/tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/zu/tt;->n(Lcom/byazt/zu/tt;)Lcom/byazt/bf/tt;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/zu/tt$4;->c:Lcom/byazt/zu/tt;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/zu/tt;->n(Lcom/byazt/zu/tt;)Lcom/byazt/bf/tt;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/byazt/bf/tt;->c(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
