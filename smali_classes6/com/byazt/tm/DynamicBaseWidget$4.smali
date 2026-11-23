.class public Lcom/byazt/tm/DynamicBaseWidget$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nr/zm$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x30,
        0x463
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tm/DynamicBaseWidget;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/tm/DynamicBaseWidget;


# direct methods
.method public constructor <init>(Lcom/byazt/tm/DynamicBaseWidget;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tm/DynamicBaseWidget$4;->c:Lcom/byazt/tm/DynamicBaseWidget;

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
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/byazt/tm/DynamicBaseWidget$4;->c:Lcom/byazt/tm/DynamicBaseWidget;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/byazt/tm/DynamicBaseWidget$4;->c:Lcom/byazt/tm/DynamicBaseWidget;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/byazt/tm/DynamicBaseWidget;->c(Lcom/byazt/tm/DynamicBaseWidget;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
