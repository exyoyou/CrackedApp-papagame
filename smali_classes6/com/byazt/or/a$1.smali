.class public final Lcom/byazt/or/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x243,
        0xff
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/or/a;->ve(Landroid/widget/ImageView;[BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/widget/ImageView;

.field public final synthetic tt:Lcom/byazt/wx/c;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/byazt/wx/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/or/a$1;->c:Landroid/widget/ImageView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/or/a$1;->tt:Lcom/byazt/wx/c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/or/a$1;->c:Landroid/widget/ImageView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/or/a$1;->tt:Lcom/byazt/wx/c;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
