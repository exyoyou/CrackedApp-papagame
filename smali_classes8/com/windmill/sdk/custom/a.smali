.class public final synthetic Lcom/windmill/sdk/custom/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/utils/m$a;


# instance fields
.field public final synthetic a:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/windmill/sdk/custom/a;->a:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    iput-object p2, p0, Lcom/windmill/sdk/custom/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/windmill/sdk/custom/a;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final onAddExtra(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/custom/a;->a:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    iget-object v1, p0, Lcom/windmill/sdk/custom/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/windmill/sdk/custom/a;->c:Ljava/util/Map;

    invoke-static {v0, v1, v2, p1}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Object;)V

    return-void
.end method
