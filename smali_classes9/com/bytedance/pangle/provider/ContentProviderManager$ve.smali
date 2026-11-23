.class public final Lcom/bytedance/pangle/provider/ContentProviderManager$ve;
.super Lcom/bytedance/pangle/provider/ContentProviderManager$tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x50,
        0x127,
        0x47c,
        0x47d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/pangle/provider/ContentProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ve"
.end annotation


# instance fields
.field public final uj:Landroid/content/pm/ProviderInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ProviderInfo;)V
    .locals 1

    .line 1
    iget-object v0, p3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/pangle/provider/ContentProviderManager$tt;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lcom/bytedance/pangle/provider/ContentProviderManager$ve;->uj:Landroid/content/pm/ProviderInfo;

    .line 7
    .line 8
    return-void
.end method
