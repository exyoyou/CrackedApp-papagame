.class public Lcom/byazt/rpt/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x137,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/rpt/tt;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/rpt/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/rpt/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/rpt/tt$1;->c:Lcom/byazt/rpt/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/byazt/rpt/tt$1;->c:Lcom/byazt/rpt/tt;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/byazt/rpt/tt;->c(Lcom/byazt/rpt/tt;)Lcom/byazt/rpt/tt$c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/byazt/rpt/tt$1;->c:Lcom/byazt/rpt/tt;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Lcom/byazt/rpt/tt$c;->c(Landroid/app/Dialog;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
