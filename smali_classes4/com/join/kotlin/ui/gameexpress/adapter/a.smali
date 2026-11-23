.class public final synthetic Lcom/join/kotlin/ui/gameexpress/adapter/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/join/mgps/dto/CommonGameInfoBean;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/gameexpress/adapter/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/join/kotlin/ui/gameexpress/adapter/a;->c:Lcom/join/mgps/dto/CommonGameInfoBean;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/gameexpress/adapter/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/join/kotlin/ui/gameexpress/adapter/a;->c:Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-static {v0, v1}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;->k(Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
