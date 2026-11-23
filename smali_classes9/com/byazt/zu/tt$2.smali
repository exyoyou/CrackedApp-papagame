.class public Lcom/byazt/zu/tt$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/me/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x397,
        0x5c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/zu/tt;->sp()V
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
    iput-object p1, p0, Lcom/byazt/zu/tt$2;->c:Lcom/byazt/zu/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/zu/tt$2;->c:Lcom/byazt/zu/tt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/byazt/zu/tt;->tt(Lcom/byazt/zu/tt;Landroid/view/View;)V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/zu/tt$2;->c:Lcom/byazt/zu/tt;

    invoke-static {v0, p1}, Lcom/byazt/zu/tt;->c(Lcom/byazt/zu/tt;Landroid/view/View;)V

    return-void
.end method
