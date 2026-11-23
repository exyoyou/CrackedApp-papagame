.class public Lcom/byazt/ge/TopLayoutImpl$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2f6,
        0x7c3
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ge/TopLayoutImpl;->uj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ge/TopLayoutImpl;


# direct methods
.method public constructor <init>(Lcom/byazt/ge/TopLayoutImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ge/TopLayoutImpl$8;->c:Lcom/byazt/ge/TopLayoutImpl;

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
    iget-object v0, p0, Lcom/byazt/ge/TopLayoutImpl$8;->c:Lcom/byazt/ge/TopLayoutImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ge/TopLayoutImpl;->c(Lcom/byazt/ge/TopLayoutImpl;)Lcom/byazt/ge/tt;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/ge/TopLayoutImpl$8;->c:Lcom/byazt/ge/TopLayoutImpl;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/ge/TopLayoutImpl;->c(Lcom/byazt/ge/TopLayoutImpl;)Lcom/byazt/ge/tt;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/byazt/ge/tt;->sp(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
