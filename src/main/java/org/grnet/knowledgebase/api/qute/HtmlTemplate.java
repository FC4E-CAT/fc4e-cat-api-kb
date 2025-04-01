package org.grnet.knowledgebase.api.qute;

import io.quarkus.qute.Template;
import io.quarkus.vertx.web.Route;
import io.quarkus.vertx.web.RoutingExchange;
import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Inject;
import org.eclipse.microprofile.config.inject.ConfigProperty;
import jakarta.ws.rs.core.MediaType;

@ApplicationScoped
public class HtmlTemplate {

    @Inject
    Template client;

    @Inject
    Template index;

    @ConfigProperty(name = "kb.html.oidc.client.url")
    String apiHtmlOidcClientUrl;

    @ConfigProperty(name = "kb.html.graphql.playground")
    String apiHtmlGraphqlPlayground;

    @ConfigProperty(name = "kb.html.keycloak.url")
    String keycloakServerUrl;

    @ConfigProperty(name = "kb.html.keycloak.realm")
    String keycloakServerRealm;

    @ConfigProperty(name = "kb.html.keycloak.public.client.id")
    String keycloakServerClientId;

    @ConfigProperty(name = "kb.html.keycloak.javascript.adapter")
    String keycloakServerJavascriptAdapter;

    @Route(path = "/", methods = Route.HttpMethod.GET)
    public void landingPage(RoutingExchange ex) {
        String html = index
                .data("kb_oidc_client_url", apiHtmlOidcClientUrl)
                .data("kb_documentation", apiHtmlGraphqlPlayground)
                .render();

        ex.response()
                .putHeader("Content-Type", MediaType.TEXT_HTML)
                .end(html);
    }

    @Route(path = "/oidc-client", methods = Route.HttpMethod.GET)
    public void oidcClient(RoutingExchange ex) {

        String html = client
                .data("keycloak_server_url", keycloakServerUrl,
                        "keycloak_server_realm", keycloakServerRealm,
                        "keycloak_server_client_id", keycloakServerClientId,
                        "keycloak_server_javascript_adapter", keycloakServerJavascriptAdapter)
                .render();
        ex.response()
                .putHeader("Content-Type", MediaType.TEXT_HTML)
                .end(html);
    }
}
