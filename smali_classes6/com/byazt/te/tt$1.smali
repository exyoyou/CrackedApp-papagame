.class public Lcom/byazt/te/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sa/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xe,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/te/tt;->c(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/te/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/te/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/te/tt$1;->c:Lcom/byazt/te/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/te/tt$1;->c:Lcom/byazt/te/tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/te/tt;->c(Lcom/byazt/te/tt;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/byazt/te/CycleCountDownView;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/byazt/te/CycleCountDownView;->setBoxImage(Landroid/graphics/Bitmap;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
