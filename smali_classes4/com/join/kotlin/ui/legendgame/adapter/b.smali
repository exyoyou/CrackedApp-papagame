.class public final synthetic Lcom/join/kotlin/ui/legendgame/adapter/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;

.field public final synthetic d:Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(ZLcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/join/kotlin/ui/legendgame/adapter/b;->b:Z

    iput-object p2, p0, Lcom/join/kotlin/ui/legendgame/adapter/b;->c:Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;

    iput-object p3, p0, Lcom/join/kotlin/ui/legendgame/adapter/b;->d:Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;

    iput p4, p0, Lcom/join/kotlin/ui/legendgame/adapter/b;->e:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/legendgame/adapter/b;->b:Z

    iget-object v1, p0, Lcom/join/kotlin/ui/legendgame/adapter/b;->c:Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;

    iget-object v2, p0, Lcom/join/kotlin/ui/legendgame/adapter/b;->d:Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;

    iget v3, p0, Lcom/join/kotlin/ui/legendgame/adapter/b;->e:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;->k(ZLcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;ILandroid/view/View;)V

    return-void
.end method
