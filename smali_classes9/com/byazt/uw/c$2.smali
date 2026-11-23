.class public final Lcom/byazt/uw/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x6b3,
        0x46
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/uw/c;->c(Lcom/byazt/e/tt;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/e/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/e/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/uw/c$2;->c:Lcom/byazt/e/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/byazt/uw/c$2;->c:Lcom/byazt/e/tt;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/byazt/e/tt;->x:Lcom/byazt/e/tt$tt;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-interface {p2, p1}, Lcom/byazt/e/tt$tt;->c(Landroid/content/DialogInterface;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
