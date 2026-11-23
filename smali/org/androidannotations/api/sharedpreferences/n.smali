.class public abstract Lorg/androidannotations/api/sharedpreferences/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/androidannotations/api/sharedpreferences/n;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected booleanField(Ljava/lang/String;Z)Lorg/androidannotations/api/sharedpreferences/d;
    .locals 2

    .line 1
    new-instance v0, Lorg/androidannotations/api/sharedpreferences/d;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/androidannotations/api/sharedpreferences/n;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-direct {v0, v1, p1, p2}, Lorg/androidannotations/api/sharedpreferences/d;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/sharedpreferences/n;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lorg/androidannotations/api/sharedpreferences/m;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected floatField(Ljava/lang/String;F)Lorg/androidannotations/api/sharedpreferences/g;
    .locals 2

    .line 1
    new-instance v0, Lorg/androidannotations/api/sharedpreferences/g;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/androidannotations/api/sharedpreferences/n;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-direct {v0, v1, p1, p2}, Lorg/androidannotations/api/sharedpreferences/g;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Float;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/androidannotations/api/sharedpreferences/n;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    return-object v0
.end method

.method protected intField(Ljava/lang/String;I)Lorg/androidannotations/api/sharedpreferences/i;
    .locals 2

    .line 1
    new-instance v0, Lorg/androidannotations/api/sharedpreferences/i;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/androidannotations/api/sharedpreferences/n;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-direct {v0, v1, p1, p2}, Lorg/androidannotations/api/sharedpreferences/i;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method protected longField(Ljava/lang/String;J)Lorg/androidannotations/api/sharedpreferences/k;
    .locals 2

    .line 1
    new-instance v0, Lorg/androidannotations/api/sharedpreferences/k;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/androidannotations/api/sharedpreferences/n;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-direct {v0, v1, p1, p2}, Lorg/androidannotations/api/sharedpreferences/k;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Long;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method protected stringField(Ljava/lang/String;Ljava/lang/String;)Lorg/androidannotations/api/sharedpreferences/p;
    .locals 2

    .line 1
    new-instance v0, Lorg/androidannotations/api/sharedpreferences/p;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/androidannotations/api/sharedpreferences/n;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1, p2}, Lorg/androidannotations/api/sharedpreferences/p;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method protected stringSetField(Ljava/lang/String;Ljava/util/Set;)Lorg/androidannotations/api/sharedpreferences/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/androidannotations/api/sharedpreferences/r;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/androidannotations/api/sharedpreferences/r;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/androidannotations/api/sharedpreferences/n;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1, p2}, Lorg/androidannotations/api/sharedpreferences/r;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
