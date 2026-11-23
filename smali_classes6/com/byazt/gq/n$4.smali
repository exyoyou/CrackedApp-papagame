.class public Lcom/byazt/gq/n$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x34,
        0x1fa
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/gq/n;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/gq/n;


# direct methods
.method public constructor <init>(Lcom/byazt/gq/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/gq/n$4;->c:Lcom/byazt/gq/n;

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
    .locals 7

    .line 1
    invoke-static {}, Lcom/byazt/gq/t;->ve()Lcom/byazt/ou/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0xd

    .line 6
    .line 7
    invoke-static {}, Lcom/byazt/gq/t;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/byazt/gq/n$4;->c:Lcom/byazt/gq/n;

    .line 12
    .line 13
    invoke-static {v3}, Lcom/byazt/gq/n;->x(Lcom/byazt/gq/n;)Lcom/byazt/su/DownloadModel;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v4, "\u5df2\u6062\u590d\u4e0b\u8f7d"

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    invoke-interface/range {v0 .. v6}, Lcom/byazt/ou/u;->c(ILandroid/content/Context;Lcom/byazt/su/DownloadModel;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
