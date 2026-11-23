.class public final Lcom/bytedance/pangle/provider/ContentProviderManager$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x50,
        0x127,
        0x47c,
        0x7b5
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/pangle/provider/ContentProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final c:Lcom/bytedance/pangle/provider/ContentProviderManager$tt;

.field public final tt:Landroid/content/pm/ProviderInfo;

.field public final ve:Lcom/bytedance/pangle/provider/PluginContentProvider;


# direct methods
.method public constructor <init>(Lcom/bytedance/pangle/provider/ContentProviderManager$tt;Landroid/content/pm/ProviderInfo;Lcom/bytedance/pangle/provider/PluginContentProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/bytedance/pangle/provider/ContentProviderManager$c;->tt:Landroid/content/pm/ProviderInfo;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/bytedance/pangle/provider/ContentProviderManager$c;->c:Lcom/bytedance/pangle/provider/ContentProviderManager$tt;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bytedance/pangle/provider/ContentProviderManager$c;->ve:Lcom/bytedance/pangle/provider/PluginContentProvider;

    .line 9
    .line 10
    return-void
.end method
