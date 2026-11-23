.class public final synthetic Lcom/join/mgps/activity/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# instance fields
.field public final synthetic a:Lcom/join/mgps/activity/EndGameDetailActivity;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/EndGameDetailActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/w0;->a:Lcom/join/mgps/activity/EndGameDetailActivity;

    iput p2, p0, Lcom/join/mgps/activity/w0;->b:I

    return-void
.end method


# virtual methods
.method public final onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/w0;->a:Lcom/join/mgps/activity/EndGameDetailActivity;

    iget v1, p0, Lcom/join/mgps/activity/w0;->b:I

    invoke-static {v0, v1, p1, p2}, Lcom/join/mgps/activity/EndGameDetailActivity;->j(Lcom/join/mgps/activity/EndGameDetailActivity;ILcom/google/android/material/appbar/AppBarLayout;I)V

    return-void
.end method
