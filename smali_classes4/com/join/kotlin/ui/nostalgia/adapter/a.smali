.class public final synthetic Lcom/join/kotlin/ui/nostalgia/adapter/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/nostalgia/adapter/NostalgiaGameGridAdapter;

.field public final synthetic c:Lcom/join/mgps/dto/CommonGameInfoBean;

.field public final synthetic d:Lv2/c;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/nostalgia/adapter/NostalgiaGameGridAdapter;Lcom/join/mgps/dto/CommonGameInfoBean;Lv2/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/nostalgia/adapter/a;->b:Lcom/join/kotlin/ui/nostalgia/adapter/NostalgiaGameGridAdapter;

    iput-object p2, p0, Lcom/join/kotlin/ui/nostalgia/adapter/a;->c:Lcom/join/mgps/dto/CommonGameInfoBean;

    iput-object p3, p0, Lcom/join/kotlin/ui/nostalgia/adapter/a;->d:Lv2/c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/nostalgia/adapter/a;->b:Lcom/join/kotlin/ui/nostalgia/adapter/NostalgiaGameGridAdapter;

    iget-object v1, p0, Lcom/join/kotlin/ui/nostalgia/adapter/a;->c:Lcom/join/mgps/dto/CommonGameInfoBean;

    iget-object v2, p0, Lcom/join/kotlin/ui/nostalgia/adapter/a;->d:Lv2/c;

    invoke-static {v0, v1, v2, p1}, Lcom/join/kotlin/ui/nostalgia/adapter/NostalgiaGameGridAdapter;->k(Lcom/join/kotlin/ui/nostalgia/adapter/NostalgiaGameGridAdapter;Lcom/join/mgps/dto/CommonGameInfoBean;Lv2/c;Landroid/view/View;)V

    return-void
.end method
