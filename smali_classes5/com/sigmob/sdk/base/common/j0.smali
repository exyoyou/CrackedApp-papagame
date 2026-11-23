.class public final synthetic Lcom/sigmob/sdk/base/common/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sigmob/sdk/base/common/ad$a;


# instance fields
.field public final synthetic a:Landroid/content/pm/PackageInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/PackageInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/base/common/j0;->a:Landroid/content/pm/PackageInfo;

    return-void
.end method


# virtual methods
.method public final onAddExtra(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/base/common/j0;->a:Landroid/content/pm/PackageInfo;

    invoke-static {v0, p1}, Lcom/sigmob/sdk/base/common/ad;->g(Landroid/content/pm/PackageInfo;Ljava/lang/Object;)V

    return-void
.end method
